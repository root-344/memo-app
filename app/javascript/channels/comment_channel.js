import consumer from "./consumer"

if(location.pathname.match(/\/posts\/\d/)){
  consumer.subscriptions.create("CommentChannel", {
    connected() {
      // Called when the subscription is ready for use on the server
    },

    disconnected() {
      // Called when the subscription has been terminated by the server
    },

    received(data) {
      const html = `<p>${data.user.nickname}:  ${data.content.text}: ${data.date}</p>`;
      const comments = document.getElementById('comments');
      comments.insertAdjacentHTML('afterbegin', html);
      const newComment = document.getElementById('cmt-f');
      newComment.value='';
      // Called when there's incoming data on the websocket for this channel
    }
  });
}