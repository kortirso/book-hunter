var Book = React.createClass({
    render: function() {
        return (
            <div className='book'>
                <p className='book-image'><img src={this.props.book.image.url} alt="" /></p>
                <p>{this.props.name}</p>
                <p>Автор - {this.props.book.author}</p>
                {this.props.point ? <p>Раздел - {this.props.point}</p> : null}
                <p><a className='button' href={this.props.link}>Посмотреть</a></p>
            </div>
        )
    }
})