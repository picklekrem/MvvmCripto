//
//  CryptoViewModel.swift
//  MvvmCripto
//
//  Created by Ekrem Özkaraca on 10.02.2021.
//

import Foundation

struct CryptoListViewModel {
    let cryptoCurrencyList : [CryptoCurrency]
}

extension CryptoListViewModel {
    
    func numberOfRowsIntSection() -> Int {
        return self.cryptoCurrencyList.count
    }
    func cryptoAtIndex(_ index: Int) -> CrypoViewModel{
        let crypto = self.cryptoCurrencyList[index]
        return CrypoViewModel(cryptoCurrency: crypto)
    }
    
}

struct CrypoViewModel {
    let cryptoCurrency : CryptoCurrency
}

extension CrypoViewModel {
    var name : String {
        return self.cryptoCurrency.currency
    }
    var price : String {
        return self.cryptoCurrency.price
    }
}
