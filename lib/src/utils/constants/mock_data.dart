import '../../models/destinations.dart';
import '../../models/places.dart';
import '../../models/profiles.dart';

final List<Destinations> destinationList = [
  Destinations(
    imageUrl:
        "https://foundtheworld.com/wp-content/uploads/2014/08/Niagara-Falls-31.jpg",
    title: "Natural Landmarks",
    name: "Wonders of Canada",
    places: 80,
    duration: 10,
  ),
  Destinations(
    imageUrl:
        "https://images.squarespace-cdn.com/content/v1/5cf69069261ff00001f9cc34/1570543217469-BBII9ZBCH8U2FU0H32SA/Leaning_Tower_LKV.jpg",
    title: "History & Culture",
    name: "Treasures of Italy",
    places: 75,
    duration: 7,
  ),
  Destinations(
    imageUrl:
        "https://media.tacdn.com/media/attractions-splice-spp-674x446/06/71/17/cd.jpg",
    title: "Heirtage & History",
    name: "Prague at night",
    places: 20,
    duration: 3,
  ),
];

final List<Places> placeList = [
  Places(
    country: "Canada",
    imageUrl:
        "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRJUaHFf7r4B63TwbsRtZY9HRXUmWivrlkAn5i1alsxzU5D1iAQai1Lg53NJVPWgHZ5mk7nIm3E2tqMsZvXCddnSw",
    name: "CN Tower",
    title: "Culture",
    distance: 43.2,
    owner: "Rutanchu Bamot",
    description:
        "The CN Tower is a 553.3 m-high concrete communications and observation tower in downtown Toronto, Ontario, Canada. Built on the former Railway Lands, it was completed in 1976. Its name 'CN' referred to Canadian National, the railway company that built the tower. Following the railway's decision to divest non-core freight railway assets prior to the company's privatization in 1995, it transferred the tower to the Canada Lands Company, a federal Crown corporation responsible for real estate development. The CN Tower held the record for the world's tallest free-standing structure for 32 years, from 1975 until 2007, when it was surpassed by the Burj Khalifa, and was the world's tallest tower until 2009 when it was surpassed by the Canton Tower. It is currently the ninth-tallest free-standing structure in the world and remains the tallest free-standing structure on land in the Western Hemisphere. In 1995, the CN Tower was declared one of the modern Seven Wonders of the World by the American Society of Civil Engineers. It also belongs to the World Federation of Great Towers. It is a signature icon of Toronto's skyline and attracts more than two million international visitors annually.",
    likes: 3616,
    comments: 42,
  ),
  Places(
    country: "Canada",
    imageUrl:
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT2sr6GmL9XgqUktTejgAE4CQPN9uepXTPzw7nmJhjT9SUHRnkYUNF3c_LBa4D-ntHpAEfudZ0lfxXyym4C1sfumQ",
    name: "Niagara Falls",
    title: "Natural Landmarks",
    distance: 70.4,
    owner: "Jamesme Perttulas",
    description:
        "Niagara Falls : waterfalls on the Niagara River that consist of two principal parts separated by Goat Island: the Horseshoe Falls adjoin the western (Canadian) bank and fall 158 feet (47 m); the American Falls adjoin the eastern (US) bank and fall 167 feet (50 m).",
    likes: 24688,
    comments: 1033,
  ),
  Places(
    country: "Canada",
    imageUrl:
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRxKhR5dW7TKF3U4ibzuNf-1QogdV53wqnBj-drk-xgh-s5VVWhBiy45FKLKWHryjsxrCEQTYQRASvlTZzSzR2M1w",
    name: "Royal Ontario Museum",
    title: "Culture & Architecture",
    distance: 12.5,
    owner: "Rebaca Glaziers",
    description:
        "The CN Tower is a 553.3 m-high concrete communications and observation tower in downtown Toronto, Ontario, Canada. Built on the former Railway Lands, it was completed in 1976. Its name 'CN' referred to Canadian National, the railway company that built the tower. Following the railway's decision to divest non-core freight railway assets prior to the company's privatization in 1995, it transferred the tower to the Canada Lands Company, a federal Crown corporation responsible for real estate development. The CN Tower held the record for the world's tallest free-standing structure for 32 years, from 1975 until 2007, when it was surpassed by the Burj Khalifa, and was the world's tallest tower until 2009 when it was surpassed by the Canton Tower. It is currently the ninth-tallest free-standing structure in the world and remains the tallest free-standing structure on land in the Western Hemisphere. In 1995, the CN Tower was declared one of the modern Seven Wonders of the World by the American Society of Civil Engineers. It also belongs to the World Federation of Great Towers. It is a signature icon of Toronto's skyline and attracts more than two million international visitors annually.The Royal Ontario Museum is a museum of art, world culture and natural history in Toronto, Ontario, Canada. It is one of the largest museums in North America and the largest in Canada. It attracts more than one million visitors every year, making the ROM the most-visited museum in Canada. The museum is north of Queen's Park, in the University of Toronto district, with its main entrance on Bloor Street West. Museum subway station is named after the ROM and, since a 2008 renovation, is decorated to resemble the institution's collection at the platform level. Established on April 16, 1912, and opened on March 19, 1914, the museum has maintained close relations with the University of Toronto throughout its history, often sharing expertise and resources. The museum was under the direct control and management of the University of Toronto until 1968, when it became an independent Crown agency of the Government of Ontario. Today, the museum is Canada's largest field-research institution, with research and conservation activities around the world.",
    likes: 11275,
    comments: 30,
  ),
  Places(
    country: "Canada",
    imageUrl:
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTWUT4LzTzIiwBLZsBxGyJWYIO-f75DgDT1x9dBVaNhACz8jDMV3aYomMpENFpc9q5D8bTHCtdaPH8PS-0wyenM7Q",
    name: "Parliament Hill",
    title: "Culture & Architecture",
    distance: 51.1,
    owner: "Jason V.",
    description:
        "Parliament Hill, colloquially known as The Hill, is an area of Crown land on the southern banks of the Ottawa River in downtown Ottawa, Ontario, Canada. Its Gothic revival suite of buildings, and their architectural elements of national symbolic importance, is the home of the Parliament of Canada. Parliament Hill attracts approximately three million visitors each year. Law enforcement on Parliament Hill and in the parliamentary precinct is the responsibility of the Parliamentary Protective Service. Originally the site of a military base in the 18th and early 19th centuries, development of the area into a governmental precinct began in 1859, after Queen Victoria chose Ottawa as the capital of the Province of Canada. Following several extensions to the parliament and departmental buildings and a fire in 1916 that destroyed the Centre Block, Parliament Hill took on its present form with the completion of the Peace Tower in 1927. Since 2002, an extensive 3 dolls billion renovation and rehabilitation project has been underway throughout all the precinct's buildings; work is not expected to be complete until after 2028.",
    likes: 8954,
    comments: 57,
  ),
  Places(
    country: "Canada",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDTBrfJyCGsgHWhlYQd-pS1oI-Vt3qRueO3z-AanBWZ8HGUmErVvoDX29agg9YmxKY3dKNCzITEMO-9EzwEY3eJg",
    name: "The Butchart Gardens",
    title: "Natural Landmarks",
    distance: 32.7,
    owner: "Sweetny Luiss",
    description:
        "The Butchart Gardens is a group of floral display gardens in Brentwood Bay, British Columbia, Canada, located near Victoria on Vancouver Island. The gardens receive over a million visitors each year. The gardens have been designated a National Historic Site of Canada.",
    likes: 5312,
    comments: 28,
  ),
];

final Profiles userProfile = Profiles(
  name: "Tunsuda Boonloed",
  description: "Software Engineer @ Accenter Thailand",
  pic: "https://avatars.githubusercontent.com/u/66944039?v=4",
  post: 0,
  like: 30,
  follower: 25,
  following: 60,
);

final List<Places> likeList = [
  Places(
    country: "Canada",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDTBrfJyCGsgHWhlYQd-pS1oI-Vt3qRueO3z-AanBWZ8HGUmErVvoDX29agg9YmxKY3dKNCzITEMO-9EzwEY3eJg",
    name: "The Butchart Gardens",
    title: "Natural Landmarks",
    distance: 32.7,
    owner: "Sweetny Luiss",
    description:
        "The Butchart Gardens is a group of floral display gardens in Brentwood Bay, British Columbia, Canada, located near Victoria on Vancouver Island. The gardens receive over a million visitors each year. The gardens have been designated a National Historic Site of Canada.",
    likes: 5312,
    comments: 28,
  ),
  Places(
    country: "Canada",
    imageUrl:
        "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRxKhR5dW7TKF3U4ibzuNf-1QogdV53wqnBj-drk-xgh-s5VVWhBiy45FKLKWHryjsxrCEQTYQRASvlTZzSzR2M1w",
    name: "Royal Ontario Museum",
    title: "Culture & Architecture",
    distance: 12.5,
    owner: "Rebaca Glaziers",
    description:
        "The CN Tower is a 553.3 m-high concrete communications and observation tower in downtown Toronto, Ontario, Canada. Built on the former Railway Lands, it was completed in 1976. Its name 'CN' referred to Canadian National, the railway company that built the tower. Following the railway's decision to divest non-core freight railway assets prior to the company's privatization in 1995, it transferred the tower to the Canada Lands Company, a federal Crown corporation responsible for real estate development. The CN Tower held the record for the world's tallest free-standing structure for 32 years, from 1975 until 2007, when it was surpassed by the Burj Khalifa, and was the world's tallest tower until 2009 when it was surpassed by the Canton Tower. It is currently the ninth-tallest free-standing structure in the world and remains the tallest free-standing structure on land in the Western Hemisphere. In 1995, the CN Tower was declared one of the modern Seven Wonders of the World by the American Society of Civil Engineers. It also belongs to the World Federation of Great Towers. It is a signature icon of Toronto's skyline and attracts more than two million international visitors annually.The Royal Ontario Museum is a museum of art, world culture and natural history in Toronto, Ontario, Canada. It is one of the largest museums in North America and the largest in Canada. It attracts more than one million visitors every year, making the ROM the most-visited museum in Canada. The museum is north of Queen's Park, in the University of Toronto district, with its main entrance on Bloor Street West. Museum subway station is named after the ROM and, since a 2008 renovation, is decorated to resemble the institution's collection at the platform level. Established on April 16, 1912, and opened on March 19, 1914, the museum has maintained close relations with the University of Toronto throughout its history, often sharing expertise and resources. The museum was under the direct control and management of the University of Toronto until 1968, when it became an independent Crown agency of the Government of Ontario. Today, the museum is Canada's largest field-research institution, with research and conservation activities around the world.",
    likes: 11275,
    comments: 30,
  ),
  Places(
    country: "Canada",
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDTBrfJyCGsgHWhlYQd-pS1oI-Vt3qRueO3z-AanBWZ8HGUmErVvoDX29agg9YmxKY3dKNCzITEMO-9EzwEY3eJg",
    name: "The Butchart Gardens",
    title: "Natural Landmarks",
    distance: 32.7,
    owner: "Sweetny Luiss",
    description:
        "The Butchart Gardens is a group of floral display gardens in Brentwood Bay, British Columbia, Canada, located near Victoria on Vancouver Island. The gardens receive over a million visitors each year. The gardens have been designated a National Historic Site of Canada.",
    likes: 5312,
    comments: 28,
  ),
];
