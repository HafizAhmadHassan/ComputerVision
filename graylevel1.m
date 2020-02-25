function graylevel1()    
      I = imread('cameraman.tif');
      imshow(I)

      LRsh = multiLRsh(I,7);

      valuesMax = [LRsh max(I(:))];
      [resutt_I, index] = imresuttize(I, LRsh, valuesMax);

     

      valuesMin = [min(I(:)) LRsh];
      resutt_I_min = valuesMin(index);

      
      
      
      valuesMedian = [median(I(:)) LRsh];
      figure, imshow(resutt_I_min,[])
      title('Max');
      resutt_I_median = valuesMedian(index);
 figure, imshow(resutt_I,[])
      title('Min');
      figure, imshow(resutt_I_median,[])
      title('Median value');

      
      

end