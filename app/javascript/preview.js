// 商品画像（出品）
document.addEventListener('DOMContentLoaded', function(){
  const ImageList = document.getElementById('image-list');
  if (!ImageList){ return false;}

  const createImageHTML = (blob) => {
    const imageElement = document.createElement('div');

    const blobImage = document.createElement('img');
    blobImage.setAttribute('class', 'image-file')
    blobImage.setAttribute('src', blob);

    imageElement.appendChild(blobImage);
    ImageList.appendChild(imageElement);
  };

  document.getElementById('post-image').addEventListener('change', function(e){
    const imageContent = document.querySelector('img');
    if (imageContent){
      imageContent.remove();
    }

    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);

    createImageHTML(blob);
  });
});

document.addEventListener('DOMContentLoaded', function(){
  const editList = document.getElementById('image-edit-list');
  if (!editList){ return false;}

  const createImageHTML = (blob) => {
    const imageElement = document.createElement('div');

    const blobImage = document.createElement('img');
    blobImage.setAttribute('class', 'image-file')
    blobImage.setAttribute('src', blob);

    imageElement.appendChild(blobImage);
    editList.appendChild(imageElement);
  };

  document.getElementById('post-edit-image').addEventListener('change', function(e){
    const imageContent = document.querySelector('img');
    if (imageContent){
      imageContent.remove();
    }

    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);

    createImageHTML(blob);
  });
});

// 出品者画像（新規登録）
document.addEventListener('DOMContentLoaded', function(){
  const userImageList = document.getElementById('user-image-list');
  if (!userImageList){ return false;}

  const createImageHTML = (blob) => {
    const imageElement = document.createElement('div');

    const blobImage = document.createElement('img');
    blobImage.setAttribute('class', 'image-file')
    blobImage.setAttribute('src', blob);

    imageElement.appendChild(blobImage);
    userImageList.appendChild(imageElement);
  };

  document.getElementById('user-image').addEventListener('change', function(e){
    const userImageContent = document.querySelector('img');
    if (userImageContent){
      userImageContent.remove();
    }

    const File = e.target.files[0];
    const blob = window.URL.createObjectURL(File);

    createImageHTML(blob);
  });
});
// 出品者画像（編集）  
document.addEventListener('DOMContentLoaded', function(){
  const userEditList = document.getElementById('user-edit-image-list');
  if (!userEditList){ return false;}

  const createImageHTML = (blob) => {
    const imageElement = document.createElement('div');

    const blobImage = document.createElement('img');
    blobImage.setAttribute('class', 'image-file')
    blobImage.setAttribute('src', blob);

    imageElement.appendChild(blobImage);
    userEditList.appendChild(imageElement);
  };

  document.getElementById('user-edit-image').addEventListener('change', function(e){
    const imageContent = document.querySelector('img');
    if (imageContent){
      imageContent.remove();
    }

    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);

    createImageHTML(blob);
  });
});
