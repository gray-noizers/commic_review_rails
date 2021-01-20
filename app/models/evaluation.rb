class Evaluation < ActiveHash::Base
    

    self.data = [
        { id: 1, name: 'このマンガのオススメ度は？' },
        { id: 2, name: 'とてもオススメ！' },
        { id: 3, name: 'オススメ' },
        { id: 4, name: 'どちらとも言えない' },
        { id: 5, name: 'オススメしない' },
        { id: 6, name: 'とてもオススメしない' }
    ]
end