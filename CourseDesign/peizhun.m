function on2 = peizhun(MOVING,FIXED)
    cpselect(FIXED, MOVING);   %ѡ��ؼ���
    %flag = input('Hit the Enter key after you finished control points selection');    
    mytform = cp2tform(a,b, 'projective');%���ͶӰ�仯�ľ���
    registered = imtransform(MOVING, mytform, 'bicubic');%���б仯
    on2=registered;%����任���
    figure1;
    imshow(on2);
end
