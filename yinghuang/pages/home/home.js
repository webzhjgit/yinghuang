// pages/home/home.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    car:[],
    surr:[],
    coach:[],
    article:[]
  },
  aoadMore: function () {
    wx.request({
      url: 'http://localhost:3000/home/wz',
      success: (res) => {
        this.setData({
          article: res.data
        })
      }
    })
  },
  loadMore:function(){
      wx.request({
        url: 'http://localhost:3000/home/cc',
        success:(res)=>{
          this.setData({
            car:res.data
          })
        }
      })
  },
  loasMore:function(){
    wx.request({
      url: 'http://localhost:3000/home/hj',
      success: (res) => {
        this.setData({
          surr: res.data
        })
      }
    })
  },
  loadMoress: function () {
    wx.request({
      url: 'http://localhost:3000/home/jl',
      success: (res) => {
        this.setData({
          coach: res.data
        })
      }
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.loadMore();
    this.loasMore();
    this.loadMoress();
    this.aoadMore();
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
  showvideo:function(){
    wx.navigateTo({
      url: '/pages/video/video',
    })
  },
  toAllCoachesTap:function(){
    wx.navigateTo({
      url: '/pages/coaches/coaches',
    })
  }
})