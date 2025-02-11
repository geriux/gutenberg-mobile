import Aztec

public protocol GutenbergBridgeDataSource: class {
    /// Asks the data source for the initial html content to be presented by the editor.
    /// Return `nil` to show the example content.
    ///
    /// - Returns: The HTML initial content or nil.
    func gutenbergInitialContent() -> String?
    
    /// Asks the data source for the initial title to be presented by the editor.
    /// Return `nil` to show the example content.
    ///
    /// - Returns: The HTML initial title or nil.
    func gutenbergInitialTitle() -> String?

    /// Asks the data source for an object conforming to `TextViewAttachmentDelegate`
    /// to handle media loading.
    ///
    /// - Returns: An object conforming to TextViewAttachmentDelegate.
    func aztecAttachmentDelegate() -> TextViewAttachmentDelegate

    /// Asks the data source for the locale to be used by the editor.
    /// Return `nil` to show the default one (`en`).
    ///
    /// - Returns: The locale slug value or nil.
    func gutenbergLocale() -> String?
    
    /// Asks the data source for the list of localized strings to be used by the editor.
    /// Return `nil` if no localization file is present for the current locale
    ///
    /// - Returns: Gutenberg related localization key value pairs for the current locale.
    func gutenbergTranslations() -> [String : [String]]?
}
