import static org.junit.Assert.*;

import java.util.Collection;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;


public class SocialNetworkTest {


    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {

    }

    @Test
    public void socialNetworkIsCreated() {
        SocialNetwork sn = new SocialNetwork();
        Account me = sn.join("Hakan");
        assertNotNull(me);
        assertEquals("Hakan", me.getUserName());
    }

    @Test
    public void canListSingleMemberOfSocialNetworkAfterOnePersonJoiningAndSizeOfNetworkEqualsOne() {
        SocialNetwork sn = new SocialNetwork();
        sn.join("Hakan");
        Collection<String> members = sn.listMembers();
        assertEquals(1, members.size());
        assertTrue(members.contains("Hakan"));
    }

    @Test
    public void twoPeopleCanJoinSocialNetworkAndSizeOfNetworkEqualsTwo() {
        SocialNetwork sn = new SocialNetwork();
        sn.join("Hakan");
        sn.join("Cecile");
        Collection<String> members = sn.listMembers();
        assertEquals(2, members.size());
        assertTrue(members.contains("Hakan"));
        assertTrue(members.contains("Cecile"));
    }

    @Test
    public void tryToJoinNetworkWithAnExistedUsernameShouldNotWork(){
        SocialNetwork sn = new SocialNetwork();
        Account john = sn.join("John");
        Account mary = sn.join("Mary");
        Collection<String> members = sn.listMembers();
        assertEquals(2, members.size());

        Account mary2 = sn.join("Mary");
        assertNull(mary2);
        Collection<String> members2 = sn.listMembers();
        assertEquals(2, members2.size());

    }

    @Test
    public void tryToJoinNetworkWithANullUsernameShouldNotWork(){
        SocialNetwork sn = new SocialNetwork();
        Account john = sn.join("");
        assertNull(john);
        Collection<String> members = sn.listMembers();
        assertEquals(0, members.size());

    }

    @Test
    public void SendAndAcceptFriendRequest() {
        // test sending friend request
        SocialNetwork sn = new SocialNetwork();
        Account me = sn.join("Hakan");
        Account her = sn.join("Cecile");
        assertNotNull(me);
        assertNotNull(her);
        sn.sendFriendshipTo("Cecile", me);
        assertTrue(her.getIncomingRequests().contains("Hakan"));
        // initialize and test accepting a friendRequest
        sn = new SocialNetwork();
        me = sn.join("Hakan");
        her = sn.join("Cecile");
        sn.sendFriendshipTo("Cecile", me);
        sn.acceptFriendshipFrom("Hakan", her);
        assertTrue(me.hasFriend("Cecile"));
        assertTrue(her.hasFriend("Hakan"));
    }

    @Test
    public void acceptingFriends() {
        SocialNetwork sn = new SocialNetwork();
        Account john = sn.join("John");
        Account mary = sn.join("Mary");
        sn.sendFriendshipTo("Mary", john);
        sn.acceptFriendshipFrom("John", mary);
        assertTrue(mary.hasFriend("John"));
    }

    @Test
    public void sendingAFriendRequestToNonexistingAccountShouldHaveNoEffectandNoError() {
        SocialNetwork sn = new SocialNetwork();
        Account mary = sn.join("Mary");
        sn.sendFriendshipTo("John", mary);
        assertEquals(0, mary.getOutgoingRequests().size());
        assertEquals(0, mary.getFriends().size());
    }

    @Test
    public void acceptingAFriendRequestFromNonexistingAccountShouldHaveNoEffectandNoError() {
        SocialNetwork sn = new SocialNetwork();
        Account mary = sn.join("Mary");
        sn.acceptFriendshipFrom("John", mary);
        assertEquals(0, mary.getFriends().size());
    }

    @Test
    public void acceptingAllFriends() {
        SocialNetwork sn = new SocialNetwork();
        Account john = sn.join("John");
        Account roger = sn.join("Roger");
        Account novak = sn.join("Novak");
        Account mary = sn.join("Mary");
        sn.sendFriendshipTo("Mary", john);
        sn.sendFriendshipTo("Mary", roger);
        sn.sendFriendshipTo("Mary", novak);
        sn.acceptAllFriendshipsTo(mary);

        assertTrue(mary.hasFriend("John"));
        assertTrue(mary.hasFriend("Roger"));
        assertTrue(mary.hasFriend("Novak"));
    }

    @Test
    public void rejectingFriends() {
        SocialNetwork sn = new SocialNetwork();
        Account john = sn.join("John");
        Account mary = sn.join("Mary");
        sn.sendFriendshipTo("Mary", john);
        sn.rejectFriendshipFrom("John", mary);
        assertFalse(mary.hasFriend("John"));
    }

    @Test
    public void rejectingAllFriends() {
        SocialNetwork sn = new SocialNetwork();
        Account john = sn.join("John");
        Account roger = sn.join("Roger");
        Account novak = sn.join("Novak");
        Account mary = sn.join("Mary");
        sn.sendFriendshipTo("Mary", john);
        sn.sendFriendshipTo("Mary", roger);
        sn.sendFriendshipTo("Mary", novak);
        sn.rejectAllFriendshipsTo(mary);

        assertFalse(mary.hasFriend("John"));
        assertFalse(mary.hasFriend("Roger"));
        assertFalse(mary.hasFriend("Novak"));
    }



    @Test
    public void autoAcceptFriends(){
        SocialNetwork sn = new SocialNetwork();
        Account john = sn.join("John");
        Account roger = sn.join("Roger");
        Account novak = sn.join("Novak");
        Account mary = sn.join("Mary");
        sn.autoAcceptFriendshipsTo(mary);

        sn.sendFriendshipTo("Mary", john);
        sn.sendFriendshipTo("Mary", roger);
        sn.sendFriendshipTo("Mary", novak);

        assertTrue(mary.hasFriend("John"));
        assertTrue(mary.hasFriend("Roger"));
        assertTrue(mary.hasFriend("Novak"));
    }

    @Test
    public void cancellingFriends() {
        SocialNetwork sn = new SocialNetwork();
        Account john = sn.join("John");
        Account mary = sn.join("Mary");
        sn.sendFriendshipTo("Mary", john);
        sn.acceptFriendshipFrom("John", mary);

        sn.sendFriendshipCancellationTo("John", mary);
        assertFalse(mary.hasFriend("John"));
        assertFalse(john.hasFriend("Mary"));
    }


    @Test
    public void cancellingAllFriends() {
        SocialNetwork sn = new SocialNetwork();
        Account john = sn.join("John");
        Account roger = sn.join("Roger");
        Account novak = sn.join("Novak");
        Account mary = sn.join("Mary");
        sn.autoAcceptFriendshipsTo(mary);

        sn.sendFriendshipTo("Mary", john);
        sn.sendFriendshipTo("Mary", roger);
        sn.sendFriendshipTo("Mary", novak);

        sn.cancelAllFriendships(mary);
        assertFalse(mary.hasFriend("John"));
        assertFalse(mary.hasFriend("Roger"));
        assertFalse(mary.hasFriend("Novak"));
    }

    @Test
    public void revokeAllFriendshipRequests() {
        SocialNetwork sn = new SocialNetwork();
        Account john = sn.join("John");
        Account roger = sn.join("Roger");
        Account novak = sn.join("Novak");
        Account mary = sn.join("Mary");

        sn.sendFriendshipTo("John", mary);
        sn.sendFriendshipTo("Roger", mary);
        sn.sendFriendshipTo("Novak", mary);
        sn.revokeAllFriendshipRequestSent(mary);

        assertFalse(john.getIncomingRequests().contains("Mary"));
        assertEquals(0, john.getIncomingRequests().size());
        assertFalse(roger.getIncomingRequests().contains("Mary"));
        assertEquals(0, roger.getIncomingRequests().size());
        assertFalse(novak.getIncomingRequests().contains("Mary"));
        assertEquals(0, novak.getIncomingRequests().size());

    }

    @Test
    public void cancelAllFriendships() {
        SocialNetwork sn = new SocialNetwork();
        Account john = sn.join("John");
        Account roger = sn.join("Roger");
        Account novak = sn.join("Novak");
        Account mary = sn.join("Mary");

        sn.sendFriendshipTo("Mary", john);
        sn.sendFriendshipTo("Mary", roger);
        sn.sendFriendshipTo("Mary", novak);
        sn.acceptAllFriendshipsTo(mary);

        sn.cancelAllFriendships(mary);
        assertFalse(mary.hasFriend("John"));
        assertFalse(mary.hasFriend("Roger"));
        assertFalse(mary.hasFriend("Novak"));
        assertEquals(0, mary.getFriends().size());
        assertEquals(0, john.getFriends().size());
        assertEquals(0, roger.getFriends().size());
        assertEquals(0, novak.getFriends().size());

    }


    @Test
    public void onePeopleLeaveSocialNetworkDataNoLongerRemain() {
        SocialNetwork sn = new SocialNetwork();
        Account john = sn.join("John");
        Account roger = sn.join("Roger");
        Account novak = sn.join("Novak");
        Account mary = sn.join("Mary");

        sn.sendFriendshipTo("Mary", john);
        sn.sendFriendshipTo("Mary", roger);
        sn.acceptAllFriendshipsTo(mary);

        sn.sendFriendshipTo("Novak", mary);
        sn.leave(mary);

        Collection<String> members = sn.listMembers();
        assertEquals(3, members.size());
        assertFalse(members.contains("Mary"));
        assertFalse(john.hasFriend("Mary"));
        assertFalse(roger.hasFriend("Mary"));
        assertFalse(novak.getIncomingRequests().contains("Mary"));
    }



}
