//
// Copyright (c) 2023 Adyen N.V.
//
// This file is open source and available under the MIT license. See the LICENSE file for more info.
//

import Foundation

@_spi(AdyenInternal)
open class FormValueDetailItem<ValueType: Equatable>: FormValueItem<ValueType, FormTextItemStyle>, ValidatableFormItem {
    
    /// The placeholder of the item.
    public let placeholder: String
    
    /// A closure that will be invoked when the item is selected.
    public var selectionHandler: (() -> Void)?
    
    @AdyenObservable(nil) public var formattedValue: String?
    
    public init(
        value: ValueType,
        style: FormTextItemStyle,
        placeholder: String
    ) {
        self.placeholder = placeholder
        
        super.init(value: value, style: style)
    }
    
    // MARK: - ValidatableFormItem
    
    @AdyenObservable(nil) public var validationFailureMessage: String?
    
    public func isValid() -> Bool { true }
}
