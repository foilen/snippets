// Get the binary content
byte[] content = // TODO Get
 
// Stream the pdf (in a controller)
response.setContentType('application/x-download')
response.setContentLength((int) content.size())
response.outputStream << content 
