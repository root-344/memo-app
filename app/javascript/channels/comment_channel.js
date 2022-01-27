import consumer from "./consumer"

if(location.pathname.match(/\/posts\/\d/)){

  consumer.subscriptions.create({
    channel: "CommentChannel",
    post_id: location.pathname.match(/\d+/)[0]
  }, {
    connected() {
      // Called when the subscription is ready for use on the server
    },

    disconnected() {
      // Called when the subscription has been terminated by the server
    },

    received(data) {
      const html = `
        <div class="comment">
          <p class="user-info">${data.user.nickname}: ${data.comment.text}</p>
          <p>${data.date}</p>
        </div>`
      const comments = document.getElementById("comments")
      comments.insertAdjacentHTML('afterbegin', html)
      const newComment = document.getElementById("comment-form")
      newComment.reset();
      // Called when there's incoming data on the websocket for this channel
    }
  })
}
