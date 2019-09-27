import React from 'react';
import SearchBar from '../searchbar/searchbar';
import FilterBar from '../filterbar/filterbar';
import PreviewBook from '../previewbook/previewbook';
import AllBooksContainer from '../allBooksContainer/allBooksContainer';

const AllBooks = () => {
    fetch('http://localhost:3000/graphql', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
            query: `{
                findAllBooks{
                  title
                  author
                }
              }`,
        }),
    }).then((response) => {
        if (response.ok) {
            return response.json();
        }

        return null;
    }).then((data) => {
        console.log(data);
    });

    return (
        <div>
            <div>
                <SearchBar />
                <FilterBar />
            </div>
            <div>
                <PreviewBook />
                <AllBooksContainer />
            </div>
        </div>
    );
};

export default AllBooks;
