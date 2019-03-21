Page({

  /**
   * 页面的初始数据
   */
  data: {
    banner:[],
    book:[],
    bo:[]
  },
   loadMord:function(){
      wx.request({
        url: 'http://localhost:3000/home/st',
        success:(res)=>{
          this.setData({
            banner:res.data
          })
        }
      })
   },
  loadMords: function () {
    wx.request({
      url: 'http://localhost:3000/home/book',
      success: (res) => {
        this.setData({
          book: res.data
        })
      }
    })
  },
  loadMordse(){
    wx.request({
      url: 'http://localhost:3000/home/boo',
      success: (res) => {
        this.setData({
          bo: res.data
        })
      }
    })
  },
  tabClick:function(e){
    var es = e.target.dataset.idx
    if(es==1){
      wx.request({
        url: 'http://localhost:3000/home/boo',
        success: (res) => {
          this.setData({
            bo: res.data
          })
        }
      })
    }else{
      wx.request({
        url: 'http://localhost:3000/home/bo?aid=' + es,
        success: (res) => {
          this.setData({
            bo: res.data
          })
        }
      })
    }
    
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.loadMord();
    this.loadMords();
    this.loadMordse();
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
    
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {
    
  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {
    
  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
    
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
    
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
    
  },
  tapBanner:function(e){
    var ess = e.target.dataset.idx
    wx.navigateTo({
      url: '/pages/goods-details/goods-details?aid='+ess,
    })
  }
})