import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;


public class AccountTest {

    Account me, her, another;

    @Before
    public void setUp() throws Exception {
        me = new Account("Hakan");
        her = new Account("Serra");
        another = new Account("Cecile");
    }

    @Test
    public void canBeFriendsWithAnother() {
        me.requestFriendship(her);
        assertTrue(me.getIncomingRequests().contains(her.getUserName()));
        assertTrue(her.getOutgoingRequests().contains(me.getUserName()));
    }

    @Test
    public void noFriendRequests() {
        assertEquals(0, me.getIncomingRequests().size());
        assertEquals(0, her.getOutgoingRequests().size());
    }

    @Test
    public void testMultipleFriendRequests() {
        me.requestFriendship(her);
        me.requestFriendship(another);
        assertEquals(2, me.getIncomingRequests().size());
        assertTrue(me.getIncomingRequests().contains(another.getUserName()));
        assertTrue(me.getIncomingRequests().contains(her.getUserName()));
    }

    @Test
    public void receivingAFriendRequestFromNullAccountHasNoEffectAndError(){
        Account n = null;
        me.requestFriendship(n);
        assertEquals(0, me.getIncomingRequests().size());
        assertEquals(0, me.getFriends().size());
    }

    @Test
    public void shouldNotBeAbleToAcceptFriendRequestIfOneIsNotAskedFirst(){
        her.friendshipAccepted(me);
        assertEquals(0, me.getIncomingRequests().size());
        assertEquals(0, her.getOutgoingRequests().size());
        assertFalse(her.hasFriend(me.getUserName()));
        assertEquals(0, her.getFriends().size());
    }
    @Test
    public void testMultipleFriendOutgoingRequests(){
        me.requestFriendship(her);
        another.requestFriendship(her);
        assertEquals(2, her.getOutgoingRequests().size());
        assertTrue(her.getOutgoingRequests().contains(me.getUserName()));
        assertTrue(her.getOutgoingRequests().contains(another.getUserName()));
    }
    @Test
    public void doubleFriendRequestsAreOk() {
        me.requestFriendship(her);
        me.requestFriendship(her);
        assertEquals(1, me.getIncomingRequests().size());
        assertEquals(1, her.getOutgoingRequests().size());
    }

    @Test
    public void afterAcceptingFriendRequestWhoWantsToBeFriendsUpdated() {
        me.requestFriendship(her);
        her.friendshipAccepted(me);
        assertFalse(me.getIncomingRequests().contains(her.getUserName()));
        assertFalse(her.getOutgoingRequests().contains(me.getUserName()));
    }

    @Test
    public void everybodyAreFriends() {
        me.requestFriendship(her);
        me.requestFriendship(another);
        her.requestFriendship(another);
        her.friendshipAccepted(me);
        another.friendshipAccepted(her);
        another.friendshipAccepted(me);
        assertTrue(me.hasFriend(her.getUserName()));
        assertTrue(me.hasFriend(another.getUserName()));
        assertTrue(her.hasFriend(me.getUserName()));
        assertTrue(her.hasFriend(another.getUserName()));
        assertTrue(another.hasFriend(her.getUserName()));
        assertTrue(her.hasFriend(me.getUserName()));
    }

    @Test
    public void cannotBeFriendsWithAnExistingFriend() {
        me.requestFriendship(her);
        her.friendshipAccepted(me);
        assertTrue(her.hasFriend(me.getUserName()));
        me.requestFriendship(her);
        assertFalse(me.getIncomingRequests().contains(her.getUserName()));
        assertFalse(her.getIncomingRequests().contains(me.getUserName()));
        assertFalse(her.getOutgoingRequests().contains(me.getUserName()));
        assertFalse(me.getOutgoingRequests().contains(her.getUserName()));
    }


    @Test
    public void afterRejectingFriendRequestWhoWantsToBeFriendsUpdated() {
        me.requestFriendship(her);
        her.friendshipRejected(me);
        assertFalse(me.getIncomingRequests().contains(her.getUserName()));
        assertFalse(her.getOutgoingRequests().contains(me.getUserName()));
        assertEquals(0, her.getOutgoingRequests().size());
        assertEquals(0, me.getIncomingRequests().size());
    }

    @Test
    public void rejectingANonExistedFriendRequestShouldHaveNoEffect() {
        another.requestFriendship(her);
        her.friendshipRejected(me);
        assertEquals(1, her.getOutgoingRequests().size());
        assertEquals(0, me.getIncomingRequests().size());
    }
    @Test
    public void testAutoAcceptFriendships(){
        me.autoAcceptFriendships();
        me.requestFriendship(her);
        me.requestFriendship(another);

        assertTrue(me.hasFriend(her.getUserName()));
        assertTrue(me.hasFriend(another.getUserName()));
        assertTrue(her.hasFriend(me.getUserName()));
        assertTrue(another.hasFriend(me.getUserName()));
        assertEquals(2, me.getFriends().size());
        assertEquals(0, me.getIncomingRequests().size());
        assertEquals(0,her.getOutgoingRequests().size());
        assertEquals(0, another.getOutgoingRequests().size());


    }

    @Test
    public void canUnFriendsWithAnother() {
        me.requestFriendship(her);
        her.friendshipAccepted(me);
        assertTrue(me.hasFriend(her.getUserName()));
        assertTrue(her.hasFriend(me.getUserName()));

        her.cancelFriendship(me);
        assertFalse(me.hasFriend(her.getUserName()));
        assertEquals(0, me.getFriends().size());
        assertFalse(her.hasFriend(me.getUserName()));
        assertEquals(0, her.getFriends().size());

    }

    @Test
    public void doubleUnFriendRequestsAreOk() {
        me.requestFriendship(her);
        her.friendshipAccepted(me);

        her.cancelFriendship(me);
        her.cancelFriendship(me);
        assertFalse(me.hasFriend(her.getUserName()));
        assertEquals(0, me.getFriends().size());
        assertFalse(her.hasFriend(me.getUserName()));
        assertEquals(0, her.getFriends().size());


    }
}
