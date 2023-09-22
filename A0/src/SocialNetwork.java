import java.util.HashSet;
import java.util.Collection;

public class SocialNetwork {

    private Collection<Account> accounts = new HashSet<Account>();

    // join SN with a new user name
    public Account join(String userName) {
        if(userName == null || userName.length() == 0) {
            return null;
        }

        // Existing username
        if(findAccountForUserName(userName) != null){
            return  null;
        }
        Account newAccount = new Account(userName);
        accounts.add(newAccount);
        return newAccount;
    }

    // find a member by user name
    private Account findAccountForUserName(String userName) {
        // find account with user name userName
        // not accessible to outside because that would give a user full access to another member's account
        for (Account each : accounts) {
            if (each.getUserName().equals(userName))
                return each;
        }
        return null;
    }

    // list user names of all members
    public Collection<String> listMembers() {
        Collection<String> members = new HashSet<String>();
        for (Account each : accounts) {
            members.add(each.getUserName());
        }
        return members;
    }

    // from my account, send a friend request to user with userName from my account
    public void sendFriendshipTo(String userName, Account me) {
        Account accountForUserName = findAccountForUserName(userName);
        if(accountForUserName != null) {
            accountForUserName.requestFriendship(me);
        }

    }

    // from my account, accept a pending friend request from another user with userName
    public void acceptFriendshipFrom(String userName, Account me) {
        Account accountForUserName = findAccountForUserName(userName);
        if(accountForUserName != null) {
            accountForUserName.friendshipAccepted(me);
        }
    }

    // accept all friend requests that are pending a response from my account:
    public void acceptAllFriendshipsTo(Account me) {
        Collection<String> users = new HashSet<>(me.getIncomingRequests());
        for (String userName: users){
            Account accountForUserName = findAccountForUserName(userName);
            accountForUserName.friendshipAccepted(me);
        }
    }

    // from my account, reject a friend request from another user with userName
    public void rejectFriendshipFrom(String userName, Account me) {
        Account accountForUserName = findAccountForUserName(userName);
        accountForUserName.friendshipRejected(me);
    }

    // reject all friend requests that are pending a response from my account:
    public void rejectAllFriendshipsTo(Account me){
        Collection<String> users = new HashSet<>(me.getIncomingRequests());
        for (String userName: users){
            Account accountForUserName = findAccountForUserName(userName);
            accountForUserName.friendshipRejected(me);
        }
    }


    // automatically accept all new friend requests sent to my account
    public void autoAcceptFriendshipsTo(Account me) {
        me.autoAcceptFriendships();
    }

    // from my account, unfriend an existing friend with userName
    public void sendFriendshipCancellationTo(String userName, Account me){
        Account accountForUserName = findAccountForUserName(userName);
        accountForUserName.cancelFriendship(me);
    }

    // unfriend all my friends
    public void cancelAllFriendships(Account me) {
        Collection<String> friends = new HashSet<>(me.getFriends());
        for (String friend: friends) {
            Account accountForUserName = findAccountForUserName(friend);
            accountForUserName.cancelFriendship(me);
        }
    }

    // revoke all friendship requests sent by me
    public void revokeAllFriendshipRequestSent(Account me){
        Collection<String> users = new HashSet<>(me.getOutgoingRequests());
        for (String userName: users){
            Account accountForUserName = findAccountForUserName(userName);
            me.friendshipRejected(accountForUserName);
        }
    }


    // remove the account from the social network
    public void leave(Account me){
        this.rejectAllFriendshipsTo(me);
        this.revokeAllFriendshipRequestSent(me);
        this.cancelAllFriendships(me);
        accounts.remove(me);
    }
}
