Feature: Share a library torrent

	Scenario: Add torrent listing
		When I add a torrent
		Then I should see the torrent listed
