
@Posts = new Mongo.Collection 'posts'



Posts.attachSchema new SimpleSchema 
  title: 
    type: String
    max: 200
    autoform: 
      'label-type': 'stacked'
    

  'sections.$.secType':
    type:String
    allowedValues:['text', 'picture', 'audio', 'video']

  'sections.$.secText':
    type:String
    autoform:
      rows:3
  'secitons.$.secPicture':
    type:String 

  

  
  body: 
    type: String
    autoform: 
      rows: 10
      'label-type': 'stacked'
    
  
  published: 
    type: Boolean
    defaultValue: true
    autoform: 
      type: 'toggle'
    
  
  time:
    type: Date
    autoValue: ->
      if @isInsert
        return new Date()
      else
        @unset()
      

  
  authorId:
    type: String
    autoValue: ->
      if @isUpdate
        return
      
      if this.isInsert
        return @userId
      
      
    
  

