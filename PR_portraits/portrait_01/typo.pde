void drawTypo() {
  typo.beginDraw();
  typo.clear();
  
  typo.fill(#ffffff,150);
  typo.rect(0,0,width,height);
  
  typo.textFont(font);
  float textSize = width*0.24;
  typo.fill(FG);

  typo.textAlign(LEFT, TOP);

  typo.push();

  typo.textSize(textSize);
  typo.textLeading(textSize * 0.82);
  typo.text(head1, 20, -90);

  typo.fill(0);

  typo.textSize(textSize/2);
  typo.textLeading(textSize/2 * 0.9);
  typo.text(head2, 20, 300);

  typo.textAlign(LEFT, BOTTOM);
  //textSize(textSize/4);
  //textLeading(textSize/4 * 0.9);
  typo.text(dates, 20, height-100);
  typo.text(message, 20, height-20);

  typo.pop();
  
  typo.endDraw();
  
  
  
}
