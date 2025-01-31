let jsonString = """
[{
    "Title": "Meet the Parents",
    "Year": "2000",
    "Rated": "PG-13",
    "Released": "06 Oct 2000",
    "Runtime": "108 min",
    "Genre": "Comedy, Romance",
    "Director": "Jay Roach",
    "Writer": "Greg Glienna, Mary Ruth Clarke, Greg Glienna (story), Mary Ruth Clarke (story), Jim Herzfeld (screenplay), John Hamburg (screenplay)",
    "Actors": "Robert De Niro, Ben Stiller, Teri Polo, Blythe Danner",
    "Plot": "A Jewish male nurse plans to ask his live-in girl friend to marry him. However, he learns that her strict father expects to be asked for his daughter's hand before she can accept. Thus begins the visit from Hell as the two travel to meet Mom and Dad, who turns out to be former CIA with a lie detector in the basement. Coincidentally, a sister also has announced her wedding to a young doctor. Of course everything that can go wrong, does, including the disappearance of Dad's beloved Himalayan cat, Jinxie.",
    "Language": "English, Thai, Spanish, Hebrew, French",
    "Country": "USA",
    "Awards": "Nominated for 1 Oscar. Another 7 wins & 14 nominations.",
    "Poster": "https://m.media-amazon.com/images/M/MV5BMGNlMGZiMmUtZjU0NC00MWU4LWI0YTgtYzdlNGVhZGU4NWZlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg",
    "Ratings": [{
        "Source": "Internet Movie Database",
        "Value": "7.0/10"
    }, {
        "Source": "Rotten Tomatoes",
        "Value": "84%"
    }, {
        "Source": "Metacritic",
        "Value": "73/100"
    }],
    "Metascore": "73",
    "imdbRating": "7.0",
    "imdbVotes": "310,464",
    "imdbID": "tt0212338",
    "Type": "movie",
    "DVD": "N/A",
    "BoxOffice": "$166,244,045",
    "Production": "Nancy Tenenbaum Productions, Universal Pictures, Tribeca Productions, DreamWorks Pictures",
    "Website": "N/A",
    "Response": "True"
},
{
    "Title": "Hello America",
    "Year": "2000",
    "Rated": "N/A",
    "Released": "08 Jan 2000",
    "Runtime": "90 min",
    "Genre": "Comedy",
    "Director": "Nader Galal, Kamlah Abu-Zikri(co-director)",
    "Writer": "Lenine El-Ramli",
    "Actors": "Adel Emam, Sherine, Osama Abbas, Rushdi El Mahdi",
    "Plot": "After being suspended from the People's Council, Bakhit and Adeela travel to New York at the request of Bakhit's cousin Nawfal who is a wealthy man living with his wife and two kids. Bakhit and Adeela notice the cultural differences as they try to earn a decent living in America and get married after years of waiting.",
    "Language": "Arabic, English",
    "Country": "Egypt",
    "Awards": "N/A",
    "Poster": "https://m.media-amazon.com/images/M/MV5BMjI4MmI2YTktNmUzZi00ZTY5LWJiZGItMjllNzMwMWEyOTRhL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNTg1NzAxMjk@._V1_SX300.jpg",
    "Ratings": [{
        "Source": "Internet Movie Database",
        "Value": "4.4/10"
    }],
    "Metascore": "N/A",
    "imdbRating": "4.4",
    "imdbVotes": "438",
    "imdbID": "tt1527119",
    "Type": "movie",
    "DVD": "N/A",
    "BoxOffice": "N/A",
    "Production": "N/A",
    "Website": "N/A",
    "Response": "True"
}, {
    "Title": "Lost Treasures of the Ancient World: Ancient India",
    "Year": "2000",
    "Rated": "N/A",
    "Released": "01 Nov 2000",
    "Runtime": "50 min",
    "Genre": "Documentary",
    "Director": "Chris Gormlie",
    "Writer": "David Manson",
    "Actors": "N/A",
    "Plot": "The story of India is one of fabulous dynasties and kings, timeless belief systems and golden ages of culture. This fascinating program journeys through the centuries to demonstrate how glories such as the Taj Mahal reflect the character of a unique people. This program features a stunning graphic re-creation of an Indus Valley City of the Second Millennium BC.",
    "Language": "English",
    "Country": "UK",
    "Awards": "N/A",
    "Poster": "N/A",
    "Ratings": [{
        "Source": "Internet Movie Database",
        "Value": "4.9/10"
    }],
    "Metascore": "N/A",
    "imdbRating": "4.9",
    "imdbVotes": "7",
    "imdbID": "tt1015369",
    "Type": "movie",
    "DVD": "28 Nov 2000",
    "BoxOffice": "N/A",
    "Production": "N/A",
    "Website": "N/A",
    "Response": "True"
}, {
    "Title": "The Prophet's Game",
    "Year": "2000",
    "Rated": "R",
    "Released": "10 Apr 2001",
    "Runtime": "106 min",
    "Genre": "Crime, Drama, Thriller",
    "Director": "David Worth",
    "Writer": "Carol Chrest",
    "Actors": "Dennis Hopper, Stephanie Zimbalist, Robert Yocum, Joe Penny",
    "Plot": "The Prophet has arrived in the ultimate playing ground... Los Angeles. It has taken an innocent childhood game and twisted it into a deadly match of wits, where the only prize is survival. ...",
    "Language": "English",
    "Country": "USA, Germany",
    "Awards": "N/A",
    "Poster": "https://m.media-amazon.com/images/M/MV5BMTg3MzY2NzgxMF5BMl5BanBnXkFtZTcwNDQzNjIyMQ@@._V1_SX300.jpg",
    "Ratings": [{
        "Source": "Internet Movie Database",
        "Value": "5.0/10"
    }, {
        "Source": "Rotten Tomatoes",
        "Value": "23%"
    }],
    "Metascore": "N/A",
    "imdbRating": "5.0",
    "imdbVotes": "918",
    "imdbID": "tt0199974",
    "Type": "movie",
    "DVD": "N/A",
    "BoxOffice": "N/A",
    "Production": "Metro-Goldwyn-Mayer, United Artists",
    "Website": "N/A",
    "Response": "True"
}, {
    "Title": "The Greatest Game Ever Played",
    "Year": "2005",
    "Rated": "PG",
    "Released": "30 Sep 2005",
    "Runtime": "120 min",
    "Genre": "Biography, Drama, Sport",
    "Director": "Bill Paxton",
    "Writer": "Mark Frost (book), Mark Frost (screenplay)",
    "Actors": "James Paxton, Tom Rack, Armand Laroche, Peter Hurley",
    "Plot": "Near the turn of the twentieth century, young Harry Vardon becomes a champion golfer but learns that his amazing skill is no match for the class boundaries that exclude him from  English society. A dozen years later, a young American, Francis Ouimet, fights against the same prejudice, as well as his own father's disdain, for a chance to participate in the U.S. Open against his idol -- Harry Vardon. The struggles of both men for acceptance provides the background for an amazing contest of skills.",
    "Language": "English",
    "Country": "USA, Canada",
    "Awards": "3 nominations.",
    "Poster": "https://m.media-amazon.com/images/M/MV5BMTQ4NDk3MDk0NV5BMl5BanBnXkFtZTcwMzk4OTgyMQ@@._V1_SX300.jpg",
    "Ratings": [{
        "Source": "Internet Movie Database",
        "Value": "7.4/10"
    }, {
        "Source": "Rotten Tomatoes",
        "Value": "63%"
    }, {
        "Source": "Metacritic",
        "Value": "55/100"
    }],
    "Metascore": "55",
    "imdbRating": "7.4",
    "imdbVotes": "28,217",
    "imdbID": "tt0388980",
    "Type": "movie",
    "DVD": "N/A",
    "BoxOffice": "$15,337,393",
    "Production": "Walt Disney Pictures",
    "Website": "N/A",
    "Response": "True"
}, {
    "Title": "Spy Game",
    "Year": "2001",
    "Rated": "R",
    "Released": "21 Nov 2001",
    "Runtime": "126 min",
    "Genre": "Action, Crime, Thriller",
    "Director": "Tony Scott",
    "Writer": "Michael Frost Beckner (story), Michael Frost Beckner (screenplay), David Arata (screenplay)",
    "Actors": "Robert Redford, Brad Pitt, Catherine McCormack, Stephen Dillane",
    "Plot": "CIA operative Nathan Muir (Redford) is on the brink of retirement when he finds out that his protege Tom Bishop (Pitt) has been arrested in China for espionage. No stranger to the machinations of the CIA's top echelon, Muir hones all his skills and irreverent manner in order to find a way to free Bishop. As he embarks on his mission to free Bishop, Muir recalls how he recruited and trained the young rookie, at that time a sergeant in Vietnam, their turbulent times together as operatives and the woman who threatened their friendship.",
    "Language": "English, German, Arabic, French, Cantonese",
    "Country": "USA, Germany, Japan, France, UK",
    "Awards": "3 nominations.",
    "Poster": "https://m.media-amazon.com/images/M/MV5BNjNhOGZkNzktMGU3NC00ODk2LWE4NjctZTliN2JjZTQxZmIxXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg",
    "Ratings": [{
        "Source": "Internet Movie Database",
        "Value": "7.1/10"
    }, {
        "Source": "Rotten Tomatoes",
        "Value": "66%"
    }, {
        "Source": "Metacritic",
        "Value": "63/100"
    }],
    "Metascore": "63",
    "imdbRating": "7.1",
    "imdbVotes": "145,748",
    "imdbID": "tt0266987",
    "Type": "movie",
    "DVD": "N/A",
    "BoxOffice": "$62,362,560",
    "Production": "Beacon Communications, Zaltman Film, Red Wagon Entertainment",
    "Website": "N/A",
    "Response": "True"
}, {
    "Title": "Punch-Drunk Love",
    "Year": "2002",
    "Rated": "R",
    "Released": "01 Nov 2002",
    "Runtime": "95 min",
    "Genre": "Comedy, Drama, Romance, Thriller",
    "Director": "Paul Thomas Anderson",
    "Writer": "Paul Thomas Anderson",
    "Actors": "Adam Sandler, Jason Andrews, Don McManus, Emily Watson",
    "Plot": "Barry Egan hates himself and hates his life. The only male among eight siblings, Barry is treated poorly by his overbearing sisters. Despite owning his own business, he has gotten nowhere in life largely because of his insecurities. He leads a solitary life, which allows him to hide his violent outbursts that occur when he's frustrated. His solitude however allows him to think, he stumbling upon a scheme to travel the world on a pittance, travel which he has never done. Concurrently, he meets two people who pull him in two different directions. The first is Lena Leonard, a friend of his sister Elizabeth. Barry is slow to realize that Lena is attracted to him, he making her make all the first moves. Lena is eventually able to get Barry out of his shell, she who sticks around despite his obvious problems. His burgeoning relationship and thus new life with Lena is threatened by the second,who he contacted in an effort to alleviate his loneliness. Georgia and her do whatever they can get get out of Barry what they want, no matter the price to Barry.",
    "Language": "English",
    "Country": "USA",
    "Awards": "Nominated for 1 Golden Globe. Another 14 wins & 36 nominations.",
    "Poster": "https://m.media-amazon.com/images/M/MV5BYmE1OTY4NjgtYjcwNC00NWE4LWJiNGMtZmVhYTdlMWE1YzIxXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg",
    "Ratings": [{
        "Source": "Internet Movie Database",
        "Value": "7.3/10"
    }, {
        "Source": "Rotten Tomatoes",
        "Value": "79%"
    }, {
        "Source": "Metacritic",
        "Value": "78/100"
    }],
    "Metascore": "78",
    "imdbRating": "7.3",
    "imdbVotes": "147,281",
    "imdbID": "tt0272338",
    "Type": "movie",
    "DVD": "N/A",
    "BoxOffice": "$17,844,216",
    "Production": "Ghoulardi Film Company, Revolution Films",
    "Website": "N/A",
    "Response": "True"
}, {
    "Title": "The Fog of War: Eleven Lessons from the Life of Robert S. McNamara",
    "Year": "2003",
    "Rated": "PG-13",
    "Released": "05 Mar 2004",
    "Runtime": "107 min",
    "Genre": "Documentary, Biography, History, War",
    "Director": "Errol Morris",
    "Writer": "N/A",
    "Actors": "Robert McNamara",
    "Plot": "Former corporate whiz kid Robert McNamara was the controversial Secretary of Defense in the Kennedy and Johnson administrations, during the height of the Vietnam War. This Academy Award-winning documentary, augmented by archival footage, gives the conflicted McNamara a platform on which he attempts to confront his and the U.S. government's actions in Southeast Asia in light of the horrors of modern warfare, the end of ideology and the punitive judgment of history.",
    "Language": "English",
    "Country": "USA",
    "Awards": "Won 1 Oscar. Another 12 wins & 16 nominations.",
    "Poster": "https://m.media-amazon.com/images/M/MV5BMTc3MTA4NDgzNl5BMl5BanBnXkFtZTcwOTAxNTQyMQ@@._V1_SX300.jpg",
    "Ratings": [{
        "Source": "Internet Movie Database",
        "Value": "8.1/10"
    }, {
        "Source": "Rotten Tomatoes",
        "Value": "96%"
    }, {
        "Source": "Metacritic",
        "Value": "87/100"
    }],
    "Metascore": "87",
    "imdbRating": "8.1",
    "imdbVotes": "22,781",
    "imdbID": "tt0317910",
    "Type": "movie",
    "DVD": "N/A",
    "BoxOffice": "$4,198,566",
    "Production": "SenArt Films, Globe Department Store, @radical media Inc.",
    "Website": "N/A",
    "Response": "True"
}, {
    "Title": "Triple Cross: Bin Laden's Spy in America",
    "Year": "2006",
    "Rated": "N/A",
    "Released": "28 Aug 2006",
    "Runtime": "120 min",
    "Genre": "Documentary",
    "Director": "N/A",
    "Writer": "Jonathan Towers",
    "Actors": "Nebil Ben Aissa, Ric Walker, John Abiskaron, Kai Alexander",
    "Plot": "This is the true story of Egyptian spy Ali Mohamed. He infiltrated U.S. intelligence agencies, including the CIA and FBI, and joined the U.S. Army. At the same time, he took orders from the Egyptian Islamic Jihad terrorist organization and later joined forces with al Qaeda. He trained Osama bin Laden's jihadist warriors and helped plan terrorist attacks including the 1998 African embassy bombings.",
    "Language": "English",
    "Country": "USA",
    "Awards": "N/A",
    "Poster": "https://m.media-amazon.com/images/M/MV5BMTMyMzM3NjUyMV5BMl5BanBnXkFtZTcwNDMwNzYxNA@@._V1_SX300.jpg",
    "Ratings": [{
        "Source": "Internet Movie Database",
        "Value": "7.5/10"
    }],
    "Metascore": "N/A",
    "imdbRating": "7.5",
    "imdbVotes": "37",
    "imdbID": "tt0896579",
    "Type": "movie",
    "DVD": "30 Jan 2007",
    "BoxOffice": "N/A",
    "Production": "N/A",
    "Website": "N/A",
    "Response": "True"
}, {
    "Title": "Race",
    "Year": "2007",
    "Rated": "PG-13",
    "Released": "17 Jul 2007",
    "Runtime": "99 min",
    "Genre": "Animation, Sci-Fi",
    "Director": "Robert Brousseau, Scott Heming(co-director)",
    "Writer": "Rhonda Smiley, Kevin O'Donnell (story), Rhonda Smiley (story), Robert Brousseau (story)",
    "Actors": "James Hereth, Kevin Lewis, Wheaton James, Rhonda Smiley",
    "Plot": "Far in the future, the Interplanetary Alliance staves off threats of war by establishing the high energy Star Car 5000 racing circuit, thereby allowing potential enemies to act out their aggressions on the racecourse. The drivers become celebrities revered everywhere, but ruthlessness rules and the stakes grow ever higher. A victim of corporate betrayal, Team Earth manager Potter (Russel Perryman) still carries deep emotional scars from a long-ago catastrophic crash and has vowed to win again - without the aid of sponsorship. His rag tag crew consists of the only three people he trusts; himself, hardheaded driver, Trance Caldron (James Hereth) and mechanic, Stash (Jane Roberts). At the same time, Planet Tagmatia's charismatic leader, Lord Helter (Kevin Lewis), is secretly making preparations for a massive military strike against the peacekeeping Alliance leadership, utilizing his planet's racing team as a convenient way to mask his nefarious machinations. That is, until Team Earth inadvertently stumbles upon his plan when they discover the Tagmatians smuggling military Shocktrooper robots through the Jumpgates, the strategically vital shortcuts through space. Without help or proof of the plot, Team Earth becomes hunted prey for the war mongering Tagmatians. Potter's dream of winning the Star Car 5000 is fading as fast as his resources. With a pair of adversarial energy beings (Terry Diab) and a duplicitous Alliance Chancellor (H.L. Cannon) complicating the proceedings, the situation turns more and more treacherous with each tick of the speedometer. Ultimately, the prestigious Star Car Championship becomes a mach speed backdrop for a deadly cat and mouse game, with the fate of the universe hanging in the balance. Team Earth must push their car, their team, and themselves to the limit just to survive. In a race between good and evil... Winning is everything.",
    "Language": "English",
    "Country": "USA",
    "Awards": "N/A",
    "Poster": "https://m.media-amazon.com/images/M/MV5BMTcwNjY3NzI4NV5BMl5BanBnXkFtZTcwMDAwOTYyMw@@._V1_SX300.jpg",
    "Ratings": [{
        "Source": "Internet Movie Database",
        "Value": "4.6/10"
    }],
    "Metascore": "N/A",
    "imdbRating": "4.6",
    "imdbVotes": "158",
    "imdbID": "tt1176453",
    "Type": "movie",
    "DVD": "N/A",
    "BoxOffice": "N/A",
    "Production": "N/A",
    "Website": "N/A",
    "Response": "True"
}, {
    "Title": "Race",
    "Year": "2008",
    "Rated": "Not Rated",
    "Released": "21 Mar 2008",
    "Runtime": "149 min",
    "Genre": "Action, Crime, Drama, Thriller",
    "Director": "Abbas Alibhai Burmawalla, Mastan Alibhai Burmawalla",
    "Writer": "Shiraz Ahmed (screenplay), Shiraz Ahmed (story), Jitendra Parmar (dialogue), Anurag Prapanna (dialogue)",
    "Actors": "Saif Ali Khan, Akshaye Khanna, Bipasha Basu, Katrina Kaif",
    "Plot": "Ranvir and Rajiv are half brothers who own a huge stud farm in South Africa. Ranvir is a very shrewd and aggressive man while Rajiv is laid back, and a chronic alcoholic. Sophia, Ranvir's personal secretary adores and loves him. Ranvir is unaware of her feelings. Shaina, an Indian ramp model in Durban loves Ranvir but through a twist of fate gets married to his younger brother Rajiv. When she discovers that Rajiv is a chronic alcoholic, her world is shattered. Ranvir too is disturbed as he has sacrificed his love for his younger brother because Rajiv had promised to leave alcohol for good if he marries Shaina. In a weak moment Ranvir and Shaina come very close to each other. When Rajiv starts suspecting, all hell breaks loose. A murder is committed, a contract killing is issued. A sharp tongued detective R.D., getting wise on the proceedings, starts an intriguing investigation with his brainless bimbo assistant Mini.",
    "Language": "Hindi",
    "Country": "India",
    "Awards": "4 wins & 12 nominations.",
    "Poster": "https://m.media-amazon.com/images/M/MV5BOTUxODczMjI3MV5BMl5BanBnXkFtZTcwMTExODM2MQ@@._V1_SX300.jpg",
    "Ratings": [{
        "Source": "Internet Movie Database",
        "Value": "6.7/10"
    }, {
        "Source": "Rotten Tomatoes",
        "Value": "66%"
    }],
    "Metascore": "N/A",
    "imdbRating": "6.7",
    "imdbVotes": "13,036",
    "imdbID": "tt1017456",
    "Type": "movie",
    "DVD": "N/A",
    "BoxOffice": "$1,367,024",
    "Production": "N/A",
    "Website": "N/A",
    "Response": "True"
}, {
    "Title": "Race to Witch Mountain",
    "Year": "2009",
    "Rated": "PG",
    "Released": "13 Mar 2009",
    "Runtime": "98 min",
    "Genre": "Action, Adventure, Family, Fantasy, Sci-Fi, Thriller",
    "Director": "Andy Fickman",
    "Writer": "Matt Lopez (screenplay), Mark Bomback (screenplay), Matt Lopez (screen story), Alexander Key (book)",
    "Actors": "Dwayne Johnson, AnnaSophia Robb, Alexander Ludwig, Carla Gugino",
    "Plot": "In Las Vegas, the regenerated ex-con Jack Bruno works as taxi driver. During an UFO Convention at Planet Hollywood, the skeptical Jack picks up Dr. Alex Friedman, who will present a scientific lecture in the event. Then he is pressed by two henchmen of his former boss, the criminal Wolff, that wants to talk to him, but Jack does not want to return to the crime life. Jack fights and gets rid of them; out of the blue, he finds two teenagers on the backseat of his cab. They tell that they are siblings, Sara and Seth, and they need to travel to a location outside Las Vegas in the middle of nowhere. Meanwhile the government finds a spacecraft that crashed nearby Las Vegas and is chasing the two aliens; after the investigation of the men of Major Henry Burke, they discover that the two siblings are the aliens. Jack Bruno, Sara and Seth are chased by Henry Burke's team and by the, a killer from outer space that has been sent to kill them by the military of their planet that want to invade Earth. Sara and Seth explain that they traveled to Earth to collect scientific data of an experiment and save Earth from invasion, but they need to return immediately to their planet. Jack teams up with Dr. Alex to retrieve their spacecraft in a secret base in the Witch Mountain.",
    "Language": "English",
    "Country": "USA",
    "Awards": "1 nomination.",
    "Poster": "https://m.media-amazon.com/images/M/MV5BMTg4MDJkMjctNzA3MS00NjkwLWFlNDEtZmY0MzgzNDkwZDFmXkEyXkFqcGdeQXVyMTY5Nzc4MDY@._V1_SX300.jpg",
    "Ratings": [{
        "Source": "Internet Movie Database",
        "Value": "5.7/10"
    }, {
        "Source": "Rotten Tomatoes",
        "Value": "42%"
    }, {
        "Source": "Metacritic",
        "Value": "52/100"
    }],
    "Metascore": "52",
    "imdbRating": "5.7",
    "imdbVotes": "55,717",
    "imdbID": "tt1075417",
    "Type": "movie",
    "DVD": "N/A",
    "BoxOffice": "$67,172,594",
    "Production": "Gunn Films",
    "Website": "N/A",
    "Response": "True"
}, {
    "Title": "WWE Over the Limit",
    "Year": "2010",
    "Rated": "TV-PG",
    "Released": "23 May 2010",
    "Runtime": "180 min",
    "Genre": "Action, Sport",
    "Director": "Kevin Dunn",
    "Writer": "Christopher DeJoseph, Brian Gewirtz, Ed Koskey, John Piermarini (associate writer), Michael Seitz",
    "Actors": "Dave Bautista, Adam Birch, John Cena, Tony Chimel",
    "Plot": "Divas title: Eve vs Maryse. Punk vs Mysterio. Edge vs Orton. World title: Big Show vs Swagger. WWE title I quit match: Cena vs Batista.",
    "Language": "English",
    "Country": "USA",
    "Awards": "N/A",
    "Poster": "https://m.media-amazon.com/images/M/MV5BMDI1NzgwYjEtMjU2Ni00ZmEyLWJjMjAtOWRjOGIxMTIxNDBkXkEyXkFqcGdeQXVyOTA0NzE2MzA@._V1_SX300.jpg",
    "Ratings": [{
        "Source": "Internet Movie Database",
        "Value": "6.7/10"
    }],
    "Metascore": "N/A",
    "imdbRating": "6.7",
    "imdbVotes": "106",
    "imdbID": "tt1667148",
    "Type": "movie",
    "DVD": "N/A",
    "BoxOffice": "N/A",
    "Production": "N/A",
    "Website": "N/A",
    "Response": "True"
}, {
    "Title": "Gold",
    "Year": "2013",
    "Rated": "Not Rated",
    "Released": "15 Aug 2013",
    "Runtime": "101 min",
    "Genre": "Adventure, Drama, Western",
    "Director": "Thomas Arslan",
    "Writer": "Thomas Arslan (screenplay)",
    "Actors": "Nina Hoss, Marko Mandic, Peter Kurth, Uwe Bohm",
    "Plot": "During the Klondike Gold Rush of 1898, Emily Meyer joins a group of German immigrants who travel to the Far North in search of gold deposits. The seven apprentice gold-diggers, who have no real idea of what awaits them, leave the town of Ashcroft, the end of the railway line and set off for their long journey. As they sink into the wilderness of Canada's wide-open paces, fatigue is felt. Worse, the maps become uncertain. As a result, doubt sets in and conflicts burst forth...",
    "Language": "German, English",
    "Country": "Germany, Canada",
    "Awards": "2 nominations.",
    "Poster": "https://m.media-amazon.com/images/M/MV5BOTU0MTA3NzItOGI2MS00M2VhLWFlMjUtYTk4OTRiZTYwNTc3XkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_SX300.jpg",
    "Ratings": [{
        "Source": "Internet Movie Database",
        "Value": "6.2/10"
    }, {
        "Source": "Rotten Tomatoes",
        "Value": "39%"
    }],
    "Metascore": "N/A",
    "imdbRating": "6.2",
    "imdbVotes": "1,061",
    "imdbID": "tt2338846",
    "Type": "movie",
    "DVD": "N/A",
    "BoxOffice": "N/A",
    "Production": "N/A",
    "Website": "N/A",
    "Response": "True"
}, {
    "Title": "The Keeping Room",
    "Year": "2014",
    "Rated": "R",
    "Released": "25 Sep 2015",
    "Runtime": "95 min",
    "Genre": "Drama, Western",
    "Director": "Daniel Barber",
    "Writer": "Julia Hart",
    "Actors": "Brit Marling, Hailee Steinfeld, Muna Otaru, Sam Worthington",
    "Plot": "Left without men in the dying days of the American Civil War, three Southern women - two sisters and one African-American slave - must fight to defend their home and themselves from two rogue soldiers who have broken off from the fast-approaching Union Army.",
    "Language": "English",
    "Country": "USA",
    "Awards": "3 wins & 8 nominations.",
    "Poster": "https://m.media-amazon.com/images/M/MV5BMTUxMjE0NTA5Ml5BMl5BanBnXkFtZTgwNjY0MzM1NjE@._V1_SX300.jpg",
    "Ratings": [{
        "Source": "Internet Movie Database",
        "Value": "6.0/10"
    }, {
        "Source": "Rotten Tomatoes",
        "Value": "74%"
    }, {
        "Source": "Metacritic",
        "Value": "58/100"
    }],
    "Metascore": "58",
    "imdbRating": "6.0",
    "imdbVotes": "6,355",
    "imdbID": "tt2488778",
    "Type": "movie",
    "DVD": "N/A",
    "BoxOffice": "$27,166",
    "Production": "Wind Dancer Productions, Anonymous Content, Gilbert Films",
    "Website": "N/A",
    "Response": "True"
}
]

"""

