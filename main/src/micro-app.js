import store from './store'

const microApps = [
  {
    name: 'clue',
    entry: process.env.VUE_APP_CLUE,
    activeRule: '/clue'
  }
]

const apps = microApps.map(item => {
  return {
    ...item,
    container: '#subapp-clue', // 子应用挂载的div
    props: {
      routerBase: item.activeRule, // 下发基础路由
      getGlobalState: store.getGlobalState // 下发getGlobalState方法
    }
  }
})

export default apps
