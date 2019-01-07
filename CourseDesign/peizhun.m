function on2 = peizhun(MOVING,FIXED)
    cpselect(FIXED, MOVING);   %选择关键点
    %flag = input('Hit the Enter key after you finished control points selection');    
    mytform = cp2tform(a,b, 'projective');%求出投影变化的矩阵
    registered = imtransform(MOVING, mytform, 'bicubic');%进行变化
    on2=registered;%输出变换结果
    figure1;
    imshow(on2);
end
