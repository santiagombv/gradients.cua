shinyServer(function(input, output) {
  output$pob1 <- renderWebGL({
    
    X<-matrix(c(
      1,0,0,
      0,1,0,
      0,0,1),3,3)
    
    Y<-matrix(c(
      0.99+input$g1, 0, 0,
      0, 0.99+input$g2, 0,
      0, 0, 0.99+input$g3),3,3)
    
    plot3d(ellipse3d(X, scale=c(1,1,1)), color="cyan2", box=F, axes=T,
           xlim=c(-5,5), ylim=c(-5,5), zlim=c(-5,5), alpha=0.6)
    
    plot3d(ellipse3d(Y, scale=c(1,1,1),centre = c(0,0,0)), 
           color="red3", add=T, box=F, axes = F, alpha=0.6)
  })
})