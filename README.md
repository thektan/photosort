# photosort
Sorts files into directories by year and month.

When I backup my photos from my phone to my computer, all the photos are placed into a single directory. If I ever wanted to search for a specific file, it'd be pretty difficult sifting through thousands of photo so I organize them into separate folders by year and month. 

I needed a quick script to organize the photos into separate directories according to their creation date.

## Usage

1. From your terminal, `cd` to the directory with all the photos.
2. Run `. /path/to/photosort.sh`

*I created a function in a file that is sourced to my bash called `photosort` so the following is how it looks when I run the script:*

![screenshot 2017-02-12 18 50 59](https://cloud.githubusercontent.com/assets/4496722/22869680/b54aa206-f155-11e6-9fdd-7dd4cc9c1be6.png)

**Before:**

![screenshot 2017-02-12 18 20 49](https://cloud.githubusercontent.com/assets/4496722/22869622/58d42eca-f155-11e6-9d0c-cf6633334531.png)

**After:**

![screenshot 2017-02-12 18 50 40](https://cloud.githubusercontent.com/assets/4496722/22869647/6ad63636-f155-11e6-9e9a-3e82c7dbe56e.png)
