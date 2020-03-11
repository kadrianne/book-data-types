class BooksController < ApplicationController
    def index
        books = Book.all
        render json: books
    end

    def create
        book = Book.create(
            title: params[:title],
            author: params[:author],
            genre: params[:genre],
            pub_date: params[:pub_date],
            price: params[:price],
            still_in_print: params[:still_in_print],
            num_pages: params[:num_pages],
            synopsis: params[:synopsis],
            cover_type: params[:cover_type],
            isbn: params[:isbn],
            cover_art: params[:cover_art]
        )
        render json: book
    end
end
