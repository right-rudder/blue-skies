class BookDownloadsMailer < ApplicationMailer

  default from: 'no-reply@flyblueskiesabove.com'

  def book_downloads(book_download)
    @book_download = book_download

    mail(to: @book_download.email, bcc: ["no-reply@flyblueskiesabove.com", "connect@flytheblueskies.com"], subject: "✈️ Blue Skies Above FREE Pilot Training Booklet")
  end


end
