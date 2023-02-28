{
  # Taken from VS Code default keybindings for Windows
  programs.vscode.keybindings = [
    {
      key = "escape escape";
      command = "workbench.action.exitZenMode";
      when = "inZenMode";
    }

    {
      key = "shift+escape";
      command = "closeReferenceSearch";
      when = "inReferenceSearchEditor && !config.editor.stablePeek";
    }

    {
      key = "escape";
      command = "closeReferenceSearch";
      when = "inReferenceSearchEditor && !config.editor.stablePeek";
    }

    {
      key = "escape";
      command = "editor.closeTestPeek";
      when = "testing.isInPeek && !config.editor.stablePeek || testing.isPeekVisible && !config.editor.stablePeek";
    }

    {
      key = "shift+escape";
      command = "cancelSelection";
      when = "editorHasSelection && textInputFocus";
    }

    {
      key = "escape";
      command = "cancelSelection";
      when = "editorHasSelection && textInputFocus";
    }

    {
      key = "ctrl+end";
      command = "cursorBottom";
      when = "textInputFocus";
    }

    {
      key = "ctrl+shift+end";
      command = "cursorBottomSelect";
      when = "textInputFocus";
    }

    {
      key = "ctrl+shift+alt+down";
      command = "cursorColumnSelectDown";
      when = "textInputFocus";
    }

    {
      key = "ctrl+shift+alt+left";
      command = "cursorColumnSelectLeft";
      when = "textInputFocus";
    }

    {
      key = "ctrl+shift+alt+pagedown";
      command = "cursorColumnSelectPageDown";
      when = "textInputFocus";
    }

    {
      key = "ctrl+shift+alt+pageup";
      command = "cursorColumnSelectPageUp";
      when = "textInputFocus";
    }

    {
      key = "ctrl+shift+alt+right";
      command = "cursorColumnSelectRight";
      when = "textInputFocus";
    }

    {
      key = "ctrl+shift+alt+up";
      command = "cursorColumnSelectUp";
      when = "textInputFocus";
    }

    {
      key = "down";
      command = "cursorDown";
      when = "textInputFocus";
    }

    {
      key = "ctrl+shift+down";
      command = "cursorDownSelect";
      when = "textInputFocus";
    }

    {
      key = "shift+down";
      command = "cursorDownSelect";
      when = "textInputFocus";
    }

    {
      key = "end";
      command = "cursorEnd";
      when = "textInputFocus";
      args = {
        sticky = false;
      };
    }

    {
      key = "shift+end";
      command = "cursorEndSelect";
      when = "textInputFocus";
      args = {
        sticky = false;
      };
    }

    {
      key = "home";
      command = "cursorHome";
      when = "textInputFocus";
    }

    {
      key = "shift+home";
      command = "cursorHomeSelect";
      when = "textInputFocus";
    }

    {
      key = "left";
      command = "cursorLeft";
      when = "textInputFocus";
    }

    {
      key = "shift+left";
      command = "cursorLeftSelect";
      when = "textInputFocus";
    }

    {
      key = "pagedown";
      command = "cursorPageDown";
      when = "textInputFocus";
    }

    {
      key = "shift+pagedown";
      command = "cursorPageDownSelect";
      when = "textInputFocus";
    }

    {
      key = "pageup";
      command = "cursorPageUp";
      when = "textInputFocus";
    }

    {
      key = "shift+pageup";
      command = "cursorPageUpSelect";
      when = "textInputFocus";
    }

    {
      key = "right";
      command = "cursorRight";
      when = "textInputFocus";
    }

    {
      key = "shift+right";
      command = "cursorRightSelect";
      when = "textInputFocus";
    }

    {
      key = "ctrl+home";
      command = "cursorTop";
      when = "textInputFocus";
    }

    {
      key = "ctrl+shift+home";
      command = "cursorTopSelect";
      when = "textInputFocus";
    }

    {
      key = "up";
      command = "cursorUp";
      when = "textInputFocus";
    }

    {
      key = "ctrl+shift+up";
      command = "cursorUpSelect";
      when = "textInputFocus";
    }

    {
      key = "shift+up";
      command = "cursorUpSelect";
      when = "textInputFocus";
    }

    {
      key = "shift+backspace";
      command = "deleteLeft";
      when = "textInputFocus";
    }

    {
      key = "backspace";
      command = "deleteLeft";
      when = "textInputFocus";
    }

    {
      key = "delete";
      command = "deleteRight";
      when = "textInputFocus";
    }

    {
      key = "ctrl+a";
      command = "editor.action.selectAll";
    }

    {
      key = "ctrl+l";
      command = "expandLineSelection";
      when = "textInputFocus";
    }

    {
      key = "shift+tab";
      command = "outdent";
      when = "editorTextFocus && !editorReadonly && !editorTabMovesFocus";
    }

    {
      key = "ctrl+shift+z";
      command = "redo";
    }

    {
      key = "ctrl+y";
      command = "redo";
    }

    {
      key = "ctrl+down";
      command = "scrollLineDown";
      when = "textInputFocus";
    }

    {
      key = "ctrl+up";
      command = "scrollLineUp";
      when = "textInputFocus";
    }

    {
      key = "alt+pagedown";
      command = "scrollPageDown";
      when = "textInputFocus";
    }

    {
      key = "alt+pageup";
      command = "scrollPageUp";
      when = "textInputFocus";
    }

    {
      key = "tab";
      command = "tab";
      when = "editorTextFocus && !editorReadonly && !editorTabMovesFocus";
    }

    {
      key = "ctrl+z";
      command = "undo";
    }

    {
      key = "shift+down";
      command = "cursorColumnSelectDown";
      when = "editorColumnSelection && textInputFocus";
    }

    {
      key = "shift+left";
      command = "cursorColumnSelectLeft";
      when = "editorColumnSelection && textInputFocus";
    }

    {
      key = "shift+pagedown";
      command = "cursorColumnSelectPageDown";
      when = "editorColumnSelection && textInputFocus";
    }

    {
      key = "shift+pageup";
      command = "cursorColumnSelectPageUp";
      when = "editorColumnSelection && textInputFocus";
    }

    {
      key = "shift+right";
      command = "cursorColumnSelectRight";
      when = "editorColumnSelection && textInputFocus";
    }

    {
      key = "shift+up";
      command = "cursorColumnSelectUp";
      when = "editorColumnSelection && textInputFocus";
    }

    {
      key = "shift+escape";
      command = "removeSecondaryCursors";
      when = "editorHasMultipleSelections && textInputFocus";
    }

    {
      key = "escape";
      command = "removeSecondaryCursors";
      when = "editorHasMultipleSelections && textInputFocus";
    }

    {
      key = "f12";
      command = "goToNextReference";
      when = "inReferenceSearchEditor || referenceSearchVisible";
    }

    {
      key = "f4";
      command = "goToNextReference";
      when = "inReferenceSearchEditor || referenceSearchVisible";
    }

    {
      key = "shift+f12";
      command = "goToPreviousReference";
      when = "inReferenceSearchEditor || referenceSearchVisible";
    }

    {
      key = "shift+f4";
      command = "goToPreviousReference";
      when = "inReferenceSearchEditor || referenceSearchVisible";
    }

    {
      key = "shift+enter";
      command = "refactorPreview.apply";
      when = "refactorPreview.enabled && refactorPreview.hasCheckedChanges && focusedView == 'refactorPreview'";
    }

    {
      key = "alt+enter";
      command = "testing.editFocusedTest";
      when = "focusedView == 'workbench.view.testing'";
    }

    {
      key = "escape";
      command = "notebook.cell.quitEdit";
      when = "inputFocus && notebookEditorFocused && !editorHasMultipleSelections && !editorHasSelection && !editorHoverVisible";
    }

    {
      key = "ctrl+alt+enter";
      command = "notebook.cell.quitEdit";
      when = "inputFocus && notebookEditorFocused && notebookCellType == 'markup'";
    }

    {
      key = "ctrl+f";
      command = "actions.find";
      when = "editorFocus || editorIsOpen";
    }

    {
      key = "enter";
      command = "breakpointWidget.action.acceptInput";
      when = "breakpointWidgetVisible && inBreakpointWidget";
    }

    {
      key = "shift+escape";
      command = "closeBreakpointWidget";
      when = "breakpointWidgetVisible && textInputFocus";
    }

    {
      key = "escape";
      command = "closeBreakpointWidget";
      when = "breakpointWidgetVisible && textInputFocus";
    }

    {
      key = "ctrl+u";
      command = "cursorUndo";
      when = "textInputFocus";
    }

    {
      key = "ctrl+right";
      command = "cursorWordEndRight";
      when = "textInputFocus && !accessibilityModeEnabled";
    }

    {
      key = "ctrl+shift+right";
      command = "cursorWordEndRightSelect";
      when = "textInputFocus && !accessibilityModeEnabled";
    }

    {
      key = "ctrl+left";
      command = "cursorWordLeft";
      when = "textInputFocus && !accessibilityModeEnabled";
    }

    {
      key = "ctrl+shift+left";
      command = "cursorWordLeftSelect";
      when = "textInputFocus && !accessibilityModeEnabled";
    }

    {
      key = "ctrl+backspace";
      command = "deleteWordLeft";
      when = "textInputFocus && !editorReadonly";
    }

    {
      key = "ctrl+delete";
      command = "deleteWordRight";
      when = "textInputFocus && !editorReadonly";
    }

    {
      key = "ctrl+k ctrl+c";
      command = "editor.action.addCommentLine";
      when = "editorTextFocus && !editorReadonly";
    }

    {
      key = "ctrl+d";
      command = "editor.action.addSelectionToNextFindMatch";
      when = "editorFocus";
    }

    {
      key = "shift+alt+.";
      command = "editor.action.autoFix";
      when = "editorTextFocus && !editorReadonly && supportedCodeAction =~ /(\\s|^)quickfix\\b/";
    }

    {
      key = "shift+alt+a";
      command = "editor.action.blockComment";
      when = "editorTextFocus && !editorReadonly";
    }

    {
      key = "escape";
      command = "editor.action.cancelSelectionAnchor";
      when = "editorTextFocus && selectionAnchorSet";
    }

    {
      key = "ctrl+f2";
      command = "editor.action.changeAll";
      when = "editorTextFocus && !editorReadonly";
    }

    {
      key = "ctrl+insert";
      command = "editor.action.clipboardCopyAction";
    }

    {
      key = "ctrl+c";
      command = "editor.action.clipboardCopyAction";
    }

    {
      key = "shift+delete";
      command = "editor.action.clipboardCutAction";
    }

    {
      key = "ctrl+x";
      command = "editor.action.clipboardCutAction";
    }

    {
      key = "shift+insert";
      command = "editor.action.clipboardPasteAction";
    }

    {
      key = "ctrl+v";
      command = "editor.action.clipboardPasteAction";
    }

    {
      key = "ctrl+/";
      command = "editor.action.commentLine";
      when = "editorTextFocus && !editorReadonly";
    }

    {
      key = "shift+alt+down";
      command = "editor.action.copyLinesDownAction";
      when = "editorTextFocus && !editorReadonly";
    }

    {
      key = "shift+alt+up";
      command = "editor.action.copyLinesUpAction";
      when = "editorTextFocus && !editorReadonly";
    }

    {
      key = "ctrl+k ctrl+k";
      command = "editor.action.defineKeybinding";
      when = "editorTextFocus && !editorReadonly && editorLangId == 'jsonc'";
    }

    {
      key = "ctrl+shift+k";
      command = "editor.action.deleteLines";
      when = "textInputFocus && !editorReadonly";
    }

    {
      key = "f7";
      command = "editor.action.diffReview.next";
      when = "isInDiffEditor";
    }

    {
      key = "shift+f7";
      command = "editor.action.diffReview.prev";
      when = "isInDiffEditor";
    }

    {
      key = "alt+f3";
      command = "editor.action.dirtydiff.next";
      when = "editorTextFocus && !textCompareEditorActive";
    }

    {
      key = "shift+alt+f3";
      command = "editor.action.dirtydiff.previous";
      when = "editorTextFocus && !textCompareEditorActive";
    }

    {
      key = "enter";
      command = "editor.action.extensioneditor.findNext";
      when = "webviewFindWidgetFocused && !editorFocus && activeEditor == 'workbench.editor.extension'";
    }

    {
      key = "shift+enter";
      command = "editor.action.extensioneditor.findPrevious";
      when = "webviewFindWidgetFocused && !editorFocus && activeEditor == 'workbench.editor.extension'";
    }

    {
      key = "ctrl+f";
      command = "editor.action.extensioneditor.showfind";
      when = "!editorFocus && activeEditor == 'workbench.editor.extension'";
    }

    {
      key = "shift+alt+f";
      command = "editor.action.formatDocument";
      when = "editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly && !inCompositeEditor";
    }

    {
      key = "shift+alt+f";
      command = "editor.action.formatDocument.none";
      when = "editorTextFocus && !editorHasDocumentFormattingProvider && !editorReadonly";
    }

    {
      key = "ctrl+k ctrl+f";
      command = "editor.action.formatSelection";
      when = "editorHasDocumentSelectionFormattingProvider && editorTextFocus && !editorReadonly";
    }

    {
      key = "ctrl+f12";
      command = "editor.action.goToImplementation";
      when = "editorHasImplementationProvider && editorTextFocus && !isInEmbeddedEditor";
    }

    {
      key = "shift+f12";
      command = "editor.action.goToReferences";
      when = "editorHasReferenceProvider && editorTextFocus && !inReferenceSearchEditor && !isInEmbeddedEditor";
    }

    {
      key = "ctrl+shift+.";
      command = "editor.action.inPlaceReplace.down";
      when = "editorTextFocus && !editorReadonly";
    }

    {
      key = "ctrl+shift+,";
      command = "editor.action.inPlaceReplace.up";
      when = "editorTextFocus && !editorReadonly";
    }

    {
      key = "ctrl+]";
      command = "editor.action.indentLines";
      when = "editorTextFocus && !editorReadonly";
    }

    {
      key = "escape";
      command = "editor.action.inlineSuggest.hide";
      when = "inlineSuggestionVisible";
    }

    {
      key = "alt+]";
      command = "editor.action.inlineSuggest.showNext";
      when = "inlineSuggestionVisible && !editorReadonly";
    }

    {
      key = "alt+[";
      command = "editor.action.inlineSuggest.showPrevious";
      when = "inlineSuggestionVisible && !editorReadonly";
    }

    {
      key = "ctrl+alt+up";
      command = "editor.action.insertCursorAbove";
      when = "editorTextFocus";
    }

    {
      key = "shift+alt+i";
      command = "editor.action.insertCursorAtEndOfEachLineSelected";
      when = "editorTextFocus";
    }

    {
      key = "ctrl+alt+down";
      command = "editor.action.insertCursorBelow";
      when = "editorTextFocus";
    }

    {
      key = "ctrl+enter";
      command = "editor.action.insertLineAfter";
      when = "editorTextFocus && !editorReadonly";
    }

    {
      key = "ctrl+shift+enter";
      command = "editor.action.insertLineBefore";
      when = "editorTextFocus && !editorReadonly";
    }

    {
      key = "ctrl+shift+\\";
      command = "editor.action.jumpToBracket";
      when = "editorTextFocus";
    }

    {
      key = "ctrl+shift+f2";
      command = "editor.action.linkedEditing";
      when = "editorHasRenameProvider && editorTextFocus && !editorReadonly";
    }

    {
      key = "alt+f8";
      command = "editor.action.marker.next";
      when = "editorFocus";
    }

    {
      key = "f8";
      command = "editor.action.marker.nextInFiles";
      when = "editorFocus";
    }

    {
      key = "shift+alt+f8";
      command = "editor.action.marker.prev";
      when = "editorFocus";
    }

    {
      key = "shift+f8";
      command = "editor.action.marker.prevInFiles";
      when = "editorFocus";
    }

    {
      key = "alt+down";
      command = "editor.action.moveLinesDownAction";
      when = "editorTextFocus && !editorReadonly";
    }

    {
      key = "alt+up";
      command = "editor.action.moveLinesUpAction";
      when = "editorTextFocus && !editorReadonly";
    }

    {
      key = "ctrl+k ctrl+d";
      command = "editor.action.moveSelectionToNextFindMatch";
      when = "editorFocus";
    }

    {
      key = "alt+f9";
      command = "editor.action.nextCommentThreadAction";
      when = "editorFocus";
    }

    {
      key = "f3";
      command = "editor.action.nextMatchFindAction";
      when = "editorFocus";
    }

    {
      key = "enter";
      command = "editor.action.nextMatchFindAction";
      when = "editorFocus && findInputFocussed";
    }

    {
      key = "ctrl+f3";
      command = "editor.action.nextSelectionMatchFindAction";
      when = "editorFocus";
    }

    {
      key = "shift+alt+o";
      command = "editor.action.organizeImports";
      when = "editorTextFocus && !editorReadonly && supportedCodeAction =~ /(\\s|^)source\\.organizeImports\\b/";
    }

    {
      key = "ctrl+[";
      command = "editor.action.outdentLines";
      when = "editorTextFocus && !editorReadonly";
    }

    {
      key = "alt+f12";
      command = "editor.action.peekDefinition";
      when = "editorHasDefinitionProvider && editorTextFocus && !inReferenceSearchEditor && !isInEmbeddedEditor";
    }

    {
      key = "ctrl+shift+f12";
      command = "editor.action.peekImplementation";
      when = "editorHasImplementationProvider && editorTextFocus && !inReferenceSearchEditor && !isInEmbeddedEditor";
    }

    {
      key = "shift+alt+f9";
      command = "editor.action.previousCommentThreadAction";
      when = "editorFocus";
    }

    {
      key = "shift+f3";
      command = "editor.action.previousMatchFindAction";
      when = "editorFocus";
    }

    {
      key = "shift+enter";
      command = "editor.action.previousMatchFindAction";
      when = "editorFocus && findInputFocussed";
    }

    {
      key = "ctrl+shift+f3";
      command = "editor.action.previousSelectionMatchFindAction";
      when = "editorFocus";
    }

    {
      key = "ctrl+.";
      command = "editor.action.quickFix";
      when = "editorHasCodeActionsProvider && editorTextFocus && !editorReadonly";
    }

    {
      key = "ctrl+shift+r";
      command = "editor.action.refactor";
      when = "editorHasCodeActionsProvider && editorTextFocus && !editorReadonly";
    }

    {
      key = "ctrl+k ctrl+u";
      command = "editor.action.removeCommentLine";
      when = "editorTextFocus && !editorReadonly";
    }

    {
      key = "f2";
      command = "editor.action.rename";
      when = "editorHasRenameProvider && editorTextFocus && !editorReadonly";
    }

    {
      key = "f12";
      command = "editor.action.revealDefinition";
      when = "editorHasDefinitionProvider && editorTextFocus && !isInEmbeddedEditor";
    }

    {
      key = "ctrl+k f12";
      command = "editor.action.revealDefinitionAside";
      when = "editorHasDefinitionProvider && editorTextFocus && !isInEmbeddedEditor";
    }

    {
      key = "ctrl+k ctrl+k";
      command = "editor.action.selectFromAnchorToCursor";
      when = "editorTextFocus && selectionAnchorSet";
    }

    {
      key = "ctrl+shift+l";
      command = "editor.action.selectHighlights";
      when = "editorFocus";
    }

    {
      key = "ctrl+k ctrl+b";
      command = "editor.action.setSelectionAnchor";
      when = "editorTextFocus";
    }

    {
      key = "alt+f1";
      command = "editor.action.showAccessibilityHelp";
    }

    {
      key = "shift+f10";
      command = "editor.action.showContextMenu";
      when = "textInputFocus";
    }

    {
      key = "ctrl+k ctrl+i";
      command = "editor.action.showHover";
      when = "editorTextFocus";
    }

    {
      key = "shift+alt+right";
      command = "editor.action.smartSelect.expand";
      when = "editorTextFocus";
    }

    {
      key = "shift+alt+left";
      command = "editor.action.smartSelect.shrink";
      when = "editorTextFocus";
    }

    {
      key = "ctrl+h";
      command = "editor.action.startFindReplaceAction";
      when = "editorFocus || editorIsOpen";
    }

    {
      key = "ctrl+m";
      command = "editor.action.toggleTabFocusMode";
    }

    {
      key = "alt+z";
      command = "editor.action.toggleWordWrap";
    }

    {
      key = "ctrl+shift+space";
      command = "editor.action.triggerParameterHints";
      when = "editorHasSignatureHelpProvider && editorTextFocus";
    }

    {
      key = "ctrl+i";
      command = "editor.action.triggerSuggest";
      when = "editorHasCompletionItemProvider && textInputFocus && !editorReadonly";
    }

    {
      key = "ctrl+space";
      command = "editor.action.triggerSuggest";
      when = "editorHasCompletionItemProvider && textInputFocus && !editorReadonly";
    }

    {
      key = "ctrl+k ctrl+x";
      command = "editor.action.trimTrailingWhitespace";
      when = "editorTextFocus && !editorReadonly";
    }

    {
      key = "enter";
      command = "editor.action.webvieweditor.findNext";
      when = "webviewFindWidgetFocused && !editorFocus && activeEditor == 'WebviewEditor'";
    }

    {
      key = "shift+enter";
      command = "editor.action.webvieweditor.findPrevious";
      when = "webviewFindWidgetFocused && !editorFocus && activeEditor == 'WebviewEditor'";
    }

    {
      key = "escape";
      command = "editor.action.webvieweditor.hideFind";
      when = "webviewFindWidgetVisible && !editorFocus && activeEditor == 'WebviewEditor'";
    }

    {
      key = "ctrl+f";
      command = "editor.action.webvieweditor.showFind";
      when = "webviewFindWidgetEnabled && !editorFocus && activeEditor == 'WebviewEditor'";
    }

    {
      key = "f7";
      command = "editor.action.wordHighlight.next";
      when = "editorTextFocus && hasWordHighlights";
    }

    {
      key = "shift+f7";
      command = "editor.action.wordHighlight.prev";
      when = "editorTextFocus && hasWordHighlights";
    }

    {
      key = "escape";
      command = "editor.cancelOperation";
      when = "cancellableOperation";
    }

    {
      key = "ctrl+k ctrl+,";
      command = "editor.createFoldingRangeFromSelection";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "escape";
      command = "editor.debug.action.closeExceptionWidget";
      when = "exceptionWidgetVisible";
    }

    {
      key = "ctrl+k ctrl+i";
      command = "editor.debug.action.showDebugHover";
      when = "editorTextFocus && inDebugMode";
    }

    {
      key = "f9";
      command = "editor.debug.action.toggleBreakpoint";
      when = "debuggersAvailable && editorTextFocus";
    }

    {
      key = "tab";
      command = "editor.emmet.action.expandAbbreviation";
      when = "config.emmet.triggerExpansionOnTab && editorTextFocus && !editorReadonly && !editorTabMovesFocus";
    }

    {
      key = "ctrl+shift+[";
      command = "editor.fold";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "ctrl+k ctrl+0";
      command = "editor.foldAll";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "ctrl+k ctrl+/";
      command = "editor.foldAllBlockComments";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "ctrl+k ctrl+-";
      command = "editor.foldAllExcept";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "ctrl+k ctrl+8";
      command = "editor.foldAllMarkerRegions";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "ctrl+k ctrl+1";
      command = "editor.foldLevel1";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "ctrl+k ctrl+2";
      command = "editor.foldLevel2";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "ctrl+k ctrl+3";
      command = "editor.foldLevel3";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "ctrl+k ctrl+4";
      command = "editor.foldLevel4";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "ctrl+k ctrl+5";
      command = "editor.foldLevel5";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "ctrl+k ctrl+6";
      command = "editor.foldLevel6";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "ctrl+k ctrl+7";
      command = "editor.foldLevel7";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "ctrl+k ctrl+[";
      command = "editor.foldRecursively";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "f12";
      command = "editor.gotoNextSymbolFromResult";
      when = "hasSymbols";
    }

    {
      key = "escape";
      command = "editor.gotoNextSymbolFromResult.cancel";
      when = "hasSymbols";
    }

    {
      key = "ctrl+k ctrl+.";
      command = "editor.removeManualFoldingRanges";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "ctrl+k ctrl+l";
      command = "editor.toggleFold";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "ctrl+shift+]";
      command = "editor.unfold";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "ctrl+k ctrl+j";
      command = "editor.unfoldAll";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "ctrl+k ctrl+=";
      command = "editor.unfoldAllExcept";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "ctrl+k ctrl+9";
      command = "editor.unfoldAllMarkerRegions";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "ctrl+k ctrl+]";
      command = "editor.unfoldRecursively";
      when = "editorTextFocus && foldingEnabled";
    }

    {
      key = "escape";
      command = "inlayHints.stopReadingLineWithHint";
      when = "isReadingLineWithInlayHints";
    }

    {
      key = "tab";
      command = "insertSnippet";
      when = "editorTextFocus && hasSnippetCompletions && !editorTabMovesFocus && !inSnippetMode";
    }

    {
      key = "ctrl+enter";
      command = "interactive.execute";
      when = "resourceScheme == 'vscode-interactive'";
    }

    {
      key = "pagedown";
      command = "notebook.cell.cursorPageDown";
      when = "editorTextFocus && inputFocus && notebookEditorFocused";
    }

    {
      key = "shift+pagedown";
      command = "notebook.cell.cursorPageDownSelect";
      when = "editorTextFocus && inputFocus && notebookEditorFocused";
    }

    {
      key = "pageup";
      command = "notebook.cell.cursorPageUp";
      when = "editorTextFocus && inputFocus && notebookEditorFocused";
    }

    {
      key = "shift+pageup";
      command = "notebook.cell.cursorPageUpSelect";
      when = "editorTextFocus && inputFocus && notebookEditorFocused";
    }

    {
      key = "ctrl+alt+enter";
      command = "notebook.cell.execute";
      when = "notebookCellListFocused && notebookMissingKernelExtension && !notebookCellExecuting && notebookCellType == 'code' || notebookCellListFocused && !notebookCellExecuting && notebookCellType == 'code' && notebookKernelCount > 0 || notebookCellListFocused && !notebookCellExecuting && notebookCellType == 'code' && notebookKernelSourceCount > 0";
    }

    {
      key = "alt+enter";
      command = "notebook.cell.executeAndInsertBelow";
      when = "notebookCellListFocused && notebookCellType == 'markup' || notebookCellListFocused && notebookMissingKernelExtension && !notebookCellExecuting && notebookCellType == 'code' || notebookCellListFocused && !notebookCellExecuting && notebookCellType == 'code' && notebookKernelCount > 0 || notebookCellListFocused && !notebookCellExecuting && notebookCellType == 'code' && notebookKernelSourceCount > 0";
    }

    {
      key = "shift+enter";
      command = "notebook.cell.executeAndSelectBelow";
      when = "notebookCellListFocused && notebookCellType == 'markup' || notebookCellListFocused && notebookMissingKernelExtension && !notebookCellExecuting && notebookCellType == 'code' || notebookCellListFocused && !notebookCellExecuting && notebookCellType == 'code' && notebookKernelCount > 0 || notebookCellListFocused && !notebookCellExecuting && notebookCellType == 'code' && notebookKernelSourceCount > 0";
    }

    {
      key = "ctrl+shift+v";
      command = "notebook.cell.pasteAbove";
      when = "notebookEditorFocused && !inputFocus";
    }

    {
      key = "down";
      command = "notebook.focusNextEditor";
      when = "config.notebook.navigation.allowNavigateToSurroundingCells && editorTextFocus && inputFocus && notebookEditorFocused && notebookEditorCursorAtBoundary != 'none' && notebookEditorCursorAtBoundary != 'top'";
    }

    {
      key = "up";
      command = "notebook.focusPreviousEditor";
      when = "config.notebook.navigation.allowNavigateToSurroundingCells && editorTextFocus && inputFocus && notebookEditorFocused && notebookEditorCursorAtBoundary != 'bottom' && notebookEditorCursorAtBoundary != 'none'";
    }

    {
      key = "shift+alt+f";
      command = "notebook.formatCell";
      when = "editorHasDocumentFormattingProvider && editorTextFocus && inCompositeEditor && notebookEditable && !editorReadonly && activeEditor == 'workbench.editor.notebook'";
    }

    {
      key = "ctrl+enter";
      command = "openReferenceToSide";
      when = "listFocus && referenceSearchVisible && !inputFocus && !treeElementCanCollapse && !treeElementCanExpand";
    }

    {
      key = "enter";
      command = "repl.action.acceptInput";
      when = "inDebugRepl && textInputFocus";
    }

    {
      key = "ctrl+f";
      command = "repl.action.filter";
      when = "inDebugRepl && textInputFocus";
    }

    {
      key = "ctrl+shift+r";
      command = "rerunSearchEditorSearch";
      when = "inSearchEditor";
    }

    {
      key = "escape";
      command = "search.action.focusQueryEditorWidget";
      when = "inSearchEditor";
    }

    {
      key = "ctrl+shift+backspace";
      command = "search.searchEditor.action.deleteFileResults";
      when = "inSearchEditor";
    }

    {
      key = "escape";
      command = "settings.action.clearSearchResults";
      when = "inSettingsEditor && inSettingsSearch";
    }

    {
      key = "down";
      command = "settings.action.focusSettingsFile";
      when = "inSettingsSearch && !suggestWidgetVisible";
    }

    {
      key = "ctrl+f";
      command = "settings.action.search";
      when = "inSettingsEditor";
    }

    {
      key = "ctrl+/";
      command = "toggleExplainMode";
      when = "suggestWidgetVisible";
    }

    {
      key = "ctrl+k f2";
      command = "togglePeekWidgetFocus";
      when = "inReferenceSearchEditor || referenceSearchVisible";
    }

    {
      key = "escape";
      command = "welcome.goBack";
      when = "inWelcome && activeEditor == 'gettingStartedPage'";
    }

    {
      key = "alt+f5";
      command = "workbench.action.editor.nextChange";
      when = "editorTextFocus && !textCompareEditorActive";
    }

    {
      key = "shift+alt+f5";
      command = "workbench.action.editor.previousChange";
      when = "editorTextFocus && !textCompareEditorActive";
    }

    {
      key = "shift+escape";
      command = "workbench.action.hideComment";
      when = "commentEditorFocused";
    }

    {
      key = "escape";
      command = "workbench.action.hideComment";
      when = "commentEditorFocused";
    }

    {
      key = "ctrl+enter";
      command = "workbench.action.submitComment";
      when = "commentEditorFocused";
    }

    {
      key = "alt+f8";
      command = "testing.goToNextMessage";
      when = "editorFocus && testing.isPeekVisible";
    }

    {
      key = "shift+alt+f8";
      command = "testing.goToPreviousMessage";
      when = "editorFocus && testing.isPeekVisible";
    }

    {
      key = "shift+escape";
      command = "closeFindWidget";
      when = "editorFocus && findWidgetVisible && !isComposing";
    }

    {
      key = "escape";
      command = "closeFindWidget";
      when = "editorFocus && findWidgetVisible && !isComposing";
    }

    {
      key = "ctrl+alt+enter";
      command = "editor.action.replaceAll";
      when = "editorFocus && findWidgetVisible";
    }

    {
      key = "ctrl+shift+1";
      command = "editor.action.replaceOne";
      when = "editorFocus && findWidgetVisible";
    }

    {
      key = "enter";
      command = "editor.action.replaceOne";
      when = "editorFocus && findWidgetVisible && replaceInputFocussed";
    }

    {
      key = "alt+enter";
      command = "editor.action.selectAllMatches";
      when = "editorFocus && findWidgetVisible";
    }

    {
      key = "alt+c";
      command = "toggleFindCaseSensitive";
      when = "editorFocus";
    }

    {
      key = "alt+l";
      command = "toggleFindInSelection";
      when = "editorFocus";
    }

    {
      key = "alt+r";
      command = "toggleFindRegex";
      when = "editorFocus";
    }

    {
      key = "alt+w";
      command = "toggleFindWholeWord";
      when = "editorFocus";
    }

    {
      key = "alt+p";
      command = "togglePreserveCase";
      when = "editorFocus";
    }

    {
      key = "tab";
      command = "jumpToNextSnippetPlaceholder";
      when = "editorTextFocus && hasNextTabstop && inSnippetMode";
    }

    {
      key = "shift+tab";
      command = "jumpToPrevSnippetPlaceholder";
      when = "editorTextFocus && hasPrevTabstop && inSnippetMode";
    }

    {
      key = "escape";
      command = "leaveEditorMessage";
      when = "messageVisible";
    }

    {
      key = "shift+escape";
      command = "leaveSnippet";
      when = "editorTextFocus && inSnippetMode";
    }

    {
      key = "escape";
      command = "leaveSnippet";
      when = "editorTextFocus && inSnippetMode";
    }

    {
      key = "shift+escape";
      command = "closeDirtyDiff";
      when = "dirtyDiffVisible";
    }

    {
      key = "escape";
      command = "closeDirtyDiff";
      when = "dirtyDiffVisible";
    }

    {
      key = "shift+escape";
      command = "closeMarkersNavigation";
      when = "editorFocus && markersNavigationVisible";
    }

    {
      key = "escape";
      command = "closeMarkersNavigation";
      when = "editorFocus && markersNavigationVisible";
    }

    {
      key = "escape";
      command = "notifications.hideToasts";
      when = "notificationToastsVisible";
    }

    {
      key = "shift+escape";
      command = "closeParameterHints";
      when = "editorFocus && parameterHintsVisible";
    }

    {
      key = "escape";
      command = "closeParameterHints";
      when = "editorFocus && parameterHintsVisible";
    }

    {
      key = "alt+down";
      command = "showNextParameterHint";
      when = "editorFocus && parameterHintsMultipleSignatures && parameterHintsVisible";
    }

    {
      key = "down";
      command = "showNextParameterHint";
      when = "editorFocus && parameterHintsMultipleSignatures && parameterHintsVisible";
    }

    {
      key = "alt+up";
      command = "showPrevParameterHint";
      when = "editorFocus && parameterHintsMultipleSignatures && parameterHintsVisible";
    }

    {
      key = "up";
      command = "showPrevParameterHint";
      when = "editorFocus && parameterHintsMultipleSignatures && parameterHintsVisible";
    }

    {
      key = "shift+tab";
      command = "acceptAlternativeSelectedSuggestion";
      when = "suggestWidgetHasFocusedSuggestion && suggestWidgetVisible && textInputFocus";
    }

    {
      key = "shift+enter";
      command = "acceptAlternativeSelectedSuggestion";
      when = "suggestWidgetHasFocusedSuggestion && suggestWidgetVisible && textInputFocus";
    }

    {
      key = "tab";
      command = "acceptSelectedSuggestion";
      when = "suggestWidgetHasFocusedSuggestion && suggestWidgetVisible && textInputFocus";
    }

    {
      key = "enter";
      command = "acceptSelectedSuggestion";
      when = "acceptSuggestionOnEnter && suggestWidgetHasFocusedSuggestion && suggestWidgetVisible && suggestionMakesTextEdit && textInputFocus";
    }

    {
      key = "shift+escape";
      command = "hideCodeActionMenuWidget";
      when = "CodeActionMenuVisible";
    }

    {
      key = "escape";
      command = "hideCodeActionMenuWidget";
      when = "CodeActionMenuVisible";
    }

    {
      key = "shift+escape";
      command = "hideSuggestWidget";
      when = "suggestWidgetVisible && textInputFocus";
    }

    {
      key = "escape";
      command = "hideSuggestWidget";
      when = "suggestWidgetVisible && textInputFocus";
    }

    {
      key = "tab";
      command = "insertBestCompletion";
      when = "atEndOfWord && textInputFocus && !hasOtherSuggestions && !inSnippetMode && !suggestWidgetVisible && config.editor.tabCompletion == 'on'";
    }

    {
      key = "tab";
      command = "insertNextSuggestion";
      when = "hasOtherSuggestions && textInputFocus && !inSnippetMode && !suggestWidgetVisible && config.editor.tabCompletion == 'on'";
    }

    {
      key = "shift+tab";
      command = "insertPrevSuggestion";
      when = "hasOtherSuggestions && textInputFocus && !inSnippetMode && !suggestWidgetVisible && config.editor.tabCompletion == 'on'";
    }

    {
      key = "ctrl+pagedown";
      command = "selectNextPageSuggestion";
      when = "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus";
    }

    {
      key = "pagedown";
      command = "selectNextPageSuggestion";
      when = "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus";
    }

    {
      key = "ctrl+down";
      command = "selectNextSuggestion";
      when = "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus";
    }

    {
      key = "down";
      command = "selectNextSuggestion";
      when = "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus";
    }

    {
      key = "ctrl+pageup";
      command = "selectPrevPageSuggestion";
      when = "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus";
    }

    {
      key = "pageup";
      command = "selectPrevPageSuggestion";
      when = "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus";
    }

    {
      key = "ctrl+up";
      command = "selectPrevSuggestion";
      when = "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus";
    }

    {
      key = "up";
      command = "selectPrevSuggestion";
      when = "suggestWidgetMultipleSuggestions && suggestWidgetVisible && textInputFocus";
    }

    {
      key = "ctrl+i";
      command = "toggleSuggestionDetails";
      when = "suggestWidgetVisible && textInputFocus";
    }

    {
      key = "ctrl+space";
      command = "toggleSuggestionDetails";
      when = "suggestWidgetVisible && textInputFocus";
    }

    {
      key = "ctrl+alt+space";
      command = "toggleSuggestionFocus";
      when = "suggestWidgetVisible && textInputFocus";
    }

    {
      key = "enter";
      command = "acceptRenameInput";
      when = "editorFocus && renameInputVisible";
    }

    {
      key = "shift+enter";
      command = "acceptRenameInputWithPreview";
      when = "config.editor.rename.enablePreview && editorFocus && renameInputVisible";
    }

    {
      key = "shift+escape";
      command = "cancelLinkedEditingInput";
      when = "LinkedEditingInputVisible && editorTextFocus";
    }

    {
      key = "escape";
      command = "cancelLinkedEditingInput";
      when = "LinkedEditingInputVisible && editorTextFocus";
    }

    {
      key = "shift+escape";
      command = "cancelRenameInput";
      when = "editorFocus && renameInputVisible";
    }

    {
      key = "escape";
      command = "cancelRenameInput";
      when = "editorFocus && renameInputVisible";
    }

    {
      key = "ctrl+shift+l";
      command = "addCursorsAtSearchResults";
      when = "fileMatchOrMatchFocus && searchViewletVisible";
    }

    {
      key = "ctrl+shift+;";
      command = "breadcrumbs.focus";
      when = "breadcrumbsPossible";
    }

    {
      key = "ctrl+shift+.";
      command = "breadcrumbs.focusAndSelect";
      when = "breadcrumbsPossible && breadcrumbsVisible";
    }

    {
      key = "ctrl+right";
      command = "breadcrumbs.focusNext";
      when = "breadcrumbsActive && breadcrumbsVisible";
    }

    {
      key = "right";
      command = "breadcrumbs.focusNext";
      when = "breadcrumbsActive && breadcrumbsVisible";
    }

    {
      key = "ctrl+left";
      command = "breadcrumbs.focusPrevious";
      when = "breadcrumbsActive && breadcrumbsVisible";
    }

    {
      key = "left";
      command = "breadcrumbs.focusPrevious";
      when = "breadcrumbsActive && breadcrumbsVisible";
    }

    {
      key = "ctrl+enter";
      command = "breadcrumbs.revealFocused";
      when = "breadcrumbsActive && breadcrumbsVisible";
    }

    {
      key = "space";
      command = "breadcrumbs.revealFocused";
      when = "breadcrumbsActive && breadcrumbsVisible";
    }

    {
      key = "ctrl+enter";
      command = "breadcrumbs.revealFocusedFromTreeAside";
      when = "breadcrumbsActive && breadcrumbsVisible && listFocus && !inputFocus";
    }

    {
      key = "down";
      command = "breadcrumbs.selectFocused";
      when = "breadcrumbsActive && breadcrumbsVisible";
    }

    {
      key = "enter";
      command = "breadcrumbs.selectFocused";
      when = "breadcrumbsActive && breadcrumbsVisible";
    }

    {
      key = "ctrl+shift+.";
      command = "breadcrumbs.toggleToOn";
      when = "!config.breadcrumbs.enabled";
    }

    {
      key = "shift+escape";
      command = "closeAccessibilityHelp";
      when = "accessibilityHelpWidgetVisible && editorFocus";
    }

    {
      key = "escape";
      command = "closeAccessibilityHelp";
      when = "accessibilityHelpWidgetVisible && editorFocus";
    }

    {
      key = "escape";
      command = "closeReplaceInFilesWidget";
      when = "replaceInputBoxFocus && searchViewletVisible";
    }

    {
      key = "shift+alt+c";
      command = "copyFilePath";
      when = "!editorFocus";
    }

    {
      key = "ctrl+k ctrl+shift+c";
      command = "copyRelativeFilePath";
      when = "!editorFocus";
    }

    {
      key = "alt+enter";
      command = "debug.openBreakpointToSide";
      when = "breakpointsFocused";
    }

    {
      key = "ctrl+enter";
      command = "debug.openBreakpointToSide";
      when = "breakpointsFocused";
    }

    {
      key = "ctrl+f5";
      command = "debug.openView";
      when = "!debuggersAvailable";
    }

    {
      key = "f5";
      command = "debug.openView";
      when = "!debuggersAvailable";
    }

    {
      key = "delete";
      command = "debug.removeBreakpoint";
      when = "breakpointsFocused && !breakpointInputFocused";
    }

    {
      key = "delete";
      command = "debug.removeWatchExpression";
      when = "watchExpressionsFocused && !expressionSelected";
    }

    {
      key = "alt+-";
      command = "decreaseSearchEditorContextLines";
      when = "inSearchEditor";
    }

    {
      key = "tab";
      command = "editor.action.inlineSuggest.commit";
      when = "inlineSuggestionHasIndentationLessThanTabSize && inlineSuggestionVisible && !editorTabMovesFocus";
    }

    {
      key = "shift+f9";
      command = "editor.debug.action.toggleInlineBreakpoint";
      when = "editorTextFocus";
    }

    {
      key = "shift+alt+d";
      command = "editor.detectLanguage";
      when = "editorTextFocus && !notebookEditable";
    }

    {
      key = "shift+enter";
      command = "editor.refocusCallHierarchy";
      when = "callHierarchyVisible";
    }

    {
      key = "shift+enter";
      command = "editor.refocusTypeHierarchy";
      when = "typeHierarchyVisible";
    }

    {
      key = "shift+alt+h";
      command = "editor.showCallHierarchy";
      when = "editorHasCallHierarchyProvider && editorTextFocus && !inReferenceSearchEditor";
    }

    {
      key = "shift+alt+h";
      command = "editor.showIncomingCalls";
      when = "callHierarchyVisible && callHierarchyDirection == 'outgoingCalls'";
    }

    {
      key = "shift+alt+h";
      command = "editor.showOutgoingCalls";
      when = "callHierarchyVisible && callHierarchyDirection == 'incomingCalls'";
    }

    {
      key = "shift+alt+h";
      command = "editor.showSubtypes";
      when = "typeHierarchyVisible && typeHierarchyDirection == 'supertypes'";
    }

    {
      key = "shift+alt+h";
      command = "editor.showSupertypes";
      when = "typeHierarchyVisible && typeHierarchyDirection == 'subtypes'";
    }

    {
      key = "ctrl+enter";
      command = "explorer.openToSide";
      when = "explorerViewletFocus && explorerViewletVisible && !inputFocus";
    }

    {
      key = "shift+alt+f";
      command = "filesExplorer.findInFolder";
      when = "explorerResourceIsFolder && explorerViewletVisible && filesExplorerFocus && !inputFocus";
    }

    {
      key = "alt+down";
      command = "history.showNext";
      when = "historyNavigationForwardsEnabled && historyNavigationWidgetFocus && !suggestWidgetVisible";
    }

    {
      key = "down";
      command = "history.showNext";
      when = "historyNavigationForwardsEnabled && historyNavigationWidgetFocus && !suggestWidgetVisible";
    }

    {
      key = "alt+up";
      command = "history.showPrevious";
      when = "historyNavigationBackwardsEnabled && historyNavigationWidgetFocus && !suggestWidgetVisible";
    }

    {
      key = "up";
      command = "history.showPrevious";
      when = "historyNavigationBackwardsEnabled && historyNavigationWidgetFocus && !suggestWidgetVisible";
    }

    {
      key = "alt+=";
      command = "increaseSearchEditorContextLines";
      when = "inSearchEditor";
    }

    {
      key = "down";
      command = "interactive.history.next";
      when = "!suggestWidgetVisible && resourceScheme == 'vscode-interactive' && interactiveInputCursorAtBoundary != 'none' && interactiveInputCursorAtBoundary != 'top'";
    }

    {
      key = "up";
      command = "interactive.history.previous";
      when = "!suggestWidgetVisible && resourceScheme == 'vscode-interactive' && interactiveInputCursorAtBoundary != 'bottom' && interactiveInputCursorAtBoundary != 'none'";
    }

    {
      key = "ctrl+end";
      command = "interactive.scrollToBottom";
      when = "resourceScheme == 'vscode-interactive'";
    }

    {
      key = "ctrl+home";
      command = "interactive.scrollToTop";
      when = "resourceScheme == 'vscode-interactive'";
    }

    {
      key = "ctrl+k ctrl+a";
      command = "keybindings.editor.addKeybinding";
      when = "inKeybindings && keybindingFocus";
    }

    {
      key = "escape";
      command = "keybindings.editor.clearSearchResults";
      when = "inKeybindings && inKeybindingsSearch";
    }

    {
      key = "ctrl+c";
      command = "keybindings.editor.copyKeybindingEntry";
      when = "inKeybindings && keybindingFocus && !whenFocus";
    }

    {
      key = "enter";
      command = "keybindings.editor.defineKeybinding";
      when = "inKeybindings && keybindingFocus";
    }

    {
      key = "ctrl+k ctrl+e";
      command = "keybindings.editor.defineWhenExpression";
      when = "inKeybindings && keybindingFocus";
    }

    {
      key = "ctrl+down";
      command = "keybindings.editor.focusKeybindings";
      when = "inKeybindings && inKeybindingsSearch";
    }

    {
      key = "alt+k";
      command = "keybindings.editor.recordSearchKeys";
      when = "inKeybindings && inKeybindingsSearch";
    }

    {
      key = "delete";
      command = "keybindings.editor.removeKeybinding";
      when = "inKeybindings && keybindingFocus && !inputFocus";
    }

    {
      key = "ctrl+f";
      command = "keybindings.editor.searchKeybindings";
      when = "inKeybindings";
    }

    {
      key = "alt+p";
      command = "keybindings.editor.toggleSortByPrecedence";
      when = "inKeybindings";
    }

    {
      key = "escape";
      command = "list.clear";
      when = "listFocus && listHasSelectionOrFocus && !inputFocus";
    }

    {
      key = "escape";
      command = "list.closeFind";
      when = "listFocus && treeFindOpen";
    }

    {
      key = "left";
      command = "list.collapse";
      when = "listFocus && treeElementCanCollapse && !inputFocus || listFocus && treeElementHasParent && !inputFocus";
    }

    {
      key = "ctrl+left";
      command = "list.collapseAll";
      when = "listFocus && !inputFocus";
    }

    {
      key = "right";
      command = "list.expand";
      when = "listFocus && treeElementCanExpand && !inputFocus || listFocus && treeElementHasChild && !inputFocus";
    }

    {
      key = "shift+down";
      command = "list.expandSelectionDown";
      when = "listFocus && listSupportsMultiselect && !inputFocus";
    }

    {
      key = "shift+up";
      command = "list.expandSelectionUp";
      when = "listFocus && listSupportsMultiselect && !inputFocus";
    }

    {
      key = "f3";
      command = "list.find";
      when = "listFocus && listSupportsFind";
    }

    {
      key = "ctrl+f";
      command = "list.find";
      when = "listFocus && listSupportsFind";
    }

    {
      key = "down";
      command = "list.focusDown";
      when = "listFocus && !inputFocus";
    }

    {
      key = "home";
      command = "list.focusFirst";
      when = "listFocus && !inputFocus";
    }

    {
      key = "end";
      command = "list.focusLast";
      when = "listFocus && !inputFocus";
    }

    {
      key = "pagedown";
      command = "list.focusPageDown";
      when = "listFocus && !inputFocus";
    }

    {
      key = "pageup";
      command = "list.focusPageUp";
      when = "listFocus && !inputFocus";
    }

    {
      key = "up";
      command = "list.focusUp";
      when = "listFocus && !inputFocus";
    }

    {
      key = "ctrl+down";
      command = "list.scrollDown";
      when = "listFocus && !inputFocus";
    }

    {
      key = "ctrl+up";
      command = "list.scrollUp";
      when = "listFocus && !inputFocus";
    }

    {
      key = "enter";
      command = "list.select";
      when = "listFocus && !inputFocus";
    }

    {
      key = "ctrl+a";
      command = "list.selectAll";
      when = "listFocus && listSupportsMultiselect && !inputFocus";
    }

    {
      key = "space";
      command = "list.toggleExpand";
      when = "listFocus && !inputFocus";
    }

    {
      key = "ctrl+shift+enter";
      command = "list.toggleSelection";
      when = "listFocus && !inputFocus";
    }

    {
      key = "y";
      command = "notebook.cell.changeToCode";
      when = "notebookEditorFocused && !inputFocus && activeEditor == 'workbench.editor.notebook' && notebookCellType == 'markup'";
    }

    {
      key = "m";
      command = "notebook.cell.changeToMarkdown";
      when = "notebookEditorFocused && !inputFocus && activeEditor == 'workbench.editor.notebook' && notebookCellType == 'code'";
    }

    {
      key = "alt+delete";
      command = "notebook.cell.clearOutputs";
      when = "notebookCellEditable && notebookCellHasOutputs && notebookEditable && notebookEditorFocused && !inputFocus";
    }

    {
      key = "ctrl+k ctrl+c";
      command = "notebook.cell.collapseCellInput";
      when = "notebookCellListFocused && !inputFocus && !notebookCellInputIsCollapsed";
    }

    {
      key = "ctrl+k t";
      command = "notebook.cell.collapseCellOutput";
      when = "notebookCellHasOutputs && notebookCellListFocused && !inputFocus && !notebookCellOutputIsCollapsed";
    }

    {
      key = "shift+alt+down";
      command = "notebook.cell.copyDown";
      when = "notebookEditorFocused && !inputFocus";
    }

    {
      key = "shift+alt+up";
      command = "notebook.cell.copyUp";
      when = "notebookEditorFocused && !inputFocus";
    }

    {
      key = "delete";
      command = "notebook.cell.delete";
      when = "notebookEditable && notebookEditorFocused && !inputFocus";
    }

    {
      key = "shift+alt+d";
      command = "notebook.cell.detectLanguage";
      when = "notebookCellEditable && notebookEditable";
    }

    {
      key = "enter";
      command = "notebook.cell.edit";
      when = "notebookCellListFocused && notebookEditable && !inputFocus";
    }

    {
      key = "ctrl+k ctrl+c";
      command = "notebook.cell.expandCellInput";
      when = "notebookCellInputIsCollapsed && notebookCellListFocused";
    }

    {
      key = "ctrl+k t";
      command = "notebook.cell.expandCellOutput";
      when = "notebookCellListFocused && notebookCellOutputIsCollapsed";
    }

    {
      key = "ctrl+down";
      command = "notebook.cell.focusInOutput";
      when = "notebookCellHasOutputs && notebookEditorFocused";
    }

    {
      key = "ctrl+up";
      command = "notebook.cell.focusOutOutput";
      when = "notebookEditorFocused";
    }

    {
      key = "ctrl+shift+enter";
      command = "notebook.cell.insertCodeCellAbove";
      when = "notebookCellListFocused && !inputFocus";
    }

    {
      key = "ctrl+enter";
      command = "notebook.cell.insertCodeCellBelow";
      when = "notebookCellListFocused && !inputFocus";
    }

    {
      key = "shift+alt+win+j";
      command = "notebook.cell.joinAbove";
      when = "notebookEditorFocused";
    }

    {
      key = "alt+win+j";
      command = "notebook.cell.joinBelow";
      when = "notebookEditorFocused";
    }

    {
      key = "alt+down";
      command = "notebook.cell.moveDown";
      when = "notebookEditorFocused && !inputFocus";
    }

    {
      key = "alt+up";
      command = "notebook.cell.moveUp";
      when = "notebookEditorFocused && !inputFocus";
    }

    {
      key = "ctrl+k ctrl+shift+\\";
      command = "notebook.cell.split";
      when = "notebookCellEditable && notebookEditable && notebookEditorFocused";
    }

    {
      key = "ctrl+l";
      command = "notebook.centerActiveCell";
      when = "notebookEditorFocused";
    }

    {
      key = "ctrl+f";
      command = "notebook.find";
      when = "notebookEditorFocused && !editorFocus && activeEditor == 'workbench.editor.notebook'";
    }

    {
      key = "ctrl+end";
      command = "notebook.focusBottom";
      when = "notebookEditorFocused && !inputFocus";
    }

    {
      key = "down";
      command = "notebook.focusNextEditor";
      when = "config.notebook.navigation.allowNavigateToSurroundingCells && notebookCursorNavigationMode && notebookEditorFocused && !notebookCellMarkdownEditMode && notebookCellType == 'markup'";
    }

    {
      key = "ctrl+down";
      command = "notebook.focusNextEditor";
      when = "notebookEditorFocused && notebookOutputFocused";
    }

    {
      key = "up";
      command = "notebook.focusPreviousEditor";
      when = "config.notebook.navigation.allowNavigateToSurroundingCells && notebookCursorNavigationMode && notebookEditorFocused && !notebookCellMarkdownEditMode && notebookCellType == 'markup'";
    }

    {
      key = "ctrl+home";
      command = "notebook.focusTop";
      when = "notebookEditorFocused && !inputFocus";
    }

    {
      key = "left";
      command = "notebook.fold";
      when = "notebookEditorFocused && !inputFocus && activeEditor == 'workbench.editor.notebook'";
    }

    {
      key = "ctrl+shift+[";
      command = "notebook.fold";
      when = "notebookEditorFocused && !inputFocus && activeEditor == 'workbench.editor.notebook'";
    }

    {
      key = "shift+alt+f";
      command = "notebook.format";
      when = "notebookEditable && !editorTextFocus && activeEditor == 'workbench.editor.notebook'";
    }

    {
      key = "escape";
      command = "notebook.hideFind";
      when = "notebookEditorFocused && notebookFindWidgetFocused";
    }

    {
      key = "right";
      command = "notebook.unfold";
      when = "notebookEditorFocused && !inputFocus && activeEditor == 'workbench.editor.notebook'";
    }

    {
      key = "ctrl+shift+]";
      command = "notebook.unfold";
      when = "notebookEditorFocused && !inputFocus && activeEditor == 'workbench.editor.notebook'";
    }

    {
      key = "delete";
      command = "notification.clear";
      when = "notificationFocus";
    }

    {
      key = "left";
      command = "notification.collapse";
      when = "notificationFocus";
    }

    {
      key = "right";
      command = "notification.expand";
      when = "notificationFocus";
    }

    {
      key = "enter";
      command = "notification.toggle";
      when = "notificationFocus";
    }

    {
      key = "space";
      command = "notification.toggle";
      when = "notificationFocus";
    }

    {
      key = "home";
      command = "notifications.focusFirstToast";
      when = "notificationFocus && notificationToastsVisible";
    }

    {
      key = "pageup";
      command = "notifications.focusFirstToast";
      when = "notificationFocus && notificationToastsVisible";
    }

    {
      key = "end";
      command = "notifications.focusLastToast";
      when = "notificationFocus && notificationToastsVisible";
    }

    {
      key = "pagedown";
      command = "notifications.focusLastToast";
      when = "notificationFocus && notificationToastsVisible";
    }

    {
      key = "down";
      command = "notifications.focusNextToast";
      when = "notificationFocus && notificationToastsVisible";
    }

    {
      key = "up";
      command = "notifications.focusPreviousToast";
      when = "notificationFocus && notificationToastsVisible";
    }

    {
      key = "escape";
      command = "problems.action.clearFilterText";
      when = "problemsFilterFocus";
    }

    {
      key = "ctrl+c";
      command = "problems.action.copy";
      when = "problemsVisibility && !relatedInformationFocus && focusedView == 'workbench.panel.markers.view'";
    }

    {
      key = "ctrl+f";
      command = "problems.action.focusFilter";
      when = "focusedView == 'workbench.panel.markers.view'";
    }

    {
      key = "ctrl+down";
      command = "problems.action.focusProblemsFromFilter";
      when = "problemsFilterFocus";
    }

    {
      key = "enter";
      command = "problems.action.open";
      when = "problemFocus";
    }

    {
      key = "ctrl+enter";
      command = "problems.action.openToSide";
      when = "problemFocus";
    }

    {
      key = "ctrl+.";
      command = "problems.action.showQuickFixes";
      when = "problemFocus";
    }

    {
      key = "space";
      command = "refactorPreview.toggleCheckedState";
      when = "listFocus && refactorPreview.enabled && !inputFocus";
    }

    {
      key = "shift+alt+r";
      command = "revealFileInOS";
      when = "!editorFocus";
    }

    {
      key = "enter";
      command = "revealReference";
      when = "listFocus && referenceSearchVisible && !inputFocus && !treeElementCanCollapse && !treeElementCanExpand";
    }

    {
      key = "ctrl+k s";
      command = "saveAll";
    }

    {
      key = "ctrl+enter";
      command = "scm.acceptInput";
      when = "scmRepository";
    }

    {
      key = "alt+down";
      command = "scm.forceViewNextCommit";
      when = "scmRepository";
    }

    {
      key = "alt+up";
      command = "scm.forceViewPreviousCommit";
      when = "scmRepository";
    }

    {
      key = "down";
      command = "scm.viewNextCommit";
      when = "scmInputIsInLastPosition && scmRepository && !suggestWidgetVisible";
    }

    {
      key = "up";
      command = "scm.viewPreviousCommit";
      when = "scmInputIsInFirstPosition && scmRepository && !suggestWidgetVisible";
    }

    {
      key = "escape";
      command = "search.action.cancel";
      when = "listFocus && searchViewletVisible && !inputFocus && searchState != '0'";
    }

    {
      key = "ctrl+c";
      command = "search.action.copyMatch";
      when = "fileMatchOrMatchFocus";
    }

    {
      key = "shift+alt+c";
      command = "search.action.copyPath";
      when = "fileMatchOrFolderMatchWithResourceFocus";
    }

    {
      key = "f4";
      command = "search.action.focusNextSearchResult";
      when = "hasSearchResult || inSearchEditor";
    }

    {
      key = "shift+f4";
      command = "search.action.focusPreviousSearchResult";
      when = "hasSearchResult || inSearchEditor";
    }

    {
      key = "ctrl+up";
      command = "search.action.focusSearchFromResults";
      when = "firstMatchFocus && searchViewletVisible";
    }

    {
      key = "alt+enter";
      command = "search.action.openInEditor";
      when = "hasSearchResult && searchViewletFocus";
    }

    {
      key = "enter";
      command = "search.action.openResult";
      when = "fileMatchOrMatchFocus && searchViewletVisible";
    }

    {
      key = "ctrl+enter";
      command = "search.action.openResultToSide";
      when = "fileMatchOrMatchFocus && searchViewletVisible";
    }

    {
      key = "delete";
      command = "search.action.remove";
      when = "fileMatchOrMatchFocus && searchViewletVisible";
    }

    {
      key = "ctrl+shift+1";
      command = "search.action.replace";
      when = "matchFocus && replaceActive && searchViewletVisible";
    }

    {
      key = "ctrl+alt+enter";
      command = "search.action.replaceAll";
      when = "replaceActive && searchViewletVisible && !findWidgetVisible";
    }

    {
      key = "ctrl+shift+enter";
      command = "search.action.replaceAllInFile";
      when = "fileMatchFocus && replaceActive && searchViewletVisible";
    }

    {
      key = "ctrl+shift+1";
      command = "search.action.replaceAllInFile";
      when = "fileMatchFocus && replaceActive && searchViewletVisible";
    }

    {
      key = "ctrl+shift+enter";
      command = "search.action.replaceAllInFolder";
      when = "folderMatchFocus && replaceActive && searchViewletVisible";
    }

    {
      key = "ctrl+shift+1";
      command = "search.action.replaceAllInFolder";
      when = "folderMatchFocus && replaceActive && searchViewletVisible";
    }

    {
      key = "ctrl+down";
      command = "search.focus.nextInputBox";
      when = "inSearchEditor && inputBoxFocus || inputBoxFocus && searchViewletVisible";
    }

    {
      key = "ctrl+up";
      command = "search.focus.previousInputBox";
      when = "inSearchEditor && inputBoxFocus || inputBoxFocus && searchViewletVisible && !searchInputBoxFocus";
    }

    {
      key = "ctrl+shift+l";
      command = "selectAllSearchEditorMatches";
      when = "inSearchEditor";
    }

    {
      key = "escape";
      command = "settings.action.focusLevelUp";
      when = "inSettingsEditor && !inSettingsJSONEditor && !inSettingsSearch";
    }

    {
      key = "enter";
      command = "settings.action.focusSettingControl";
      when = "settingRowFocus";
    }

    {
      key = "down";
      command = "settings.action.focusSettingsFromSearch";
      when = "inSettingsSearch && !suggestWidgetVisible";
    }

    {
      key = "enter";
      command = "settings.action.focusSettingsList";
      when = "inSettingsEditor && settingsTocRowFocus";
    }

    {
      key = "left";
      command = "settings.action.focusTOC";
      when = "inSettingsEditor && settingRowFocus";
    }

    {
      key = "shift+f9";
      command = "settings.action.showContextMenu";
      when = "inSettingsEditor";
    }

    {
      key = "ctrl+; ctrl+x";
      command = "testing.cancelRun";
    }

    {
      key = "ctrl+; ctrl+a";
      command = "testing.debugAll";
    }

    {
      key = "ctrl+; ctrl+c";
      command = "testing.debugAtCursor";
      when = "editorTextFocus";
    }

    {
      key = "ctrl+; ctrl+f";
      command = "testing.debugCurrentFile";
      when = "editorTextFocus";
    }

    {
      key = "ctrl+; ctrl+e";
      command = "testing.debugFailTests";
    }

    {
      key = "ctrl+; ctrl+l";
      command = "testing.debugLastRun";
    }

    {
      key = "ctrl+; ctrl+m";
      command = "testing.openOutputPeek";
    }

    {
      key = "ctrl+; e";
      command = "testing.reRunFailTests";
    }

    {
      key = "ctrl+; l";
      command = "testing.reRunLastRun";
    }

    {
      key = "ctrl+; ctrl+r";
      command = "testing.refreshTests";
      when = "testing.canRefresh";
    }

    {
      key = "ctrl+; a";
      command = "testing.runAll";
    }

    {
      key = "ctrl+; c";
      command = "testing.runAtCursor";
      when = "editorTextFocus";
    }

    {
      key = "ctrl+; f";
      command = "testing.runCurrentFile";
      when = "editorTextFocus";
    }

    {
      key = "ctrl+; ctrl+o";
      command = "testing.showMostRecentOutput";
      when = "testing.hasAnyResults";
    }

    {
      key = "ctrl+; ctrl+i";
      command = "testing.toggleInlineTestOutput";
    }

    {
      key = "alt+h";
      command = "testing.toggleTestingPeekHistory";
      when = "testing.isPeekVisible";
    }

    {
      key = "alt+c";
      command = "toggleSearchCaseSensitive";
      when = "searchViewletFocus";
    }

    {
      key = "alt+c";
      command = "toggleSearchEditorCaseSensitive";
      when = "inSearchEditor && searchInputBoxFocus";
    }

    {
      key = "alt+l";
      command = "toggleSearchEditorContextLines";
      when = "inSearchEditor";
    }

    {
      key = "alt+r";
      command = "toggleSearchEditorRegex";
      when = "inSearchEditor && searchInputBoxFocus";
    }

    {
      key = "alt+w";
      command = "toggleSearchEditorWholeWord";
      when = "inSearchEditor && searchInputBoxFocus";
    }

    {
      key = "alt+p";
      command = "toggleSearchPreserveCase";
      when = "searchViewletFocus";
    }

    {
      key = "alt+r";
      command = "toggleSearchRegex";
      when = "searchViewletFocus";
    }

    {
      key = "alt+w";
      command = "toggleSearchWholeWord";
      when = "searchViewletFocus";
    }

    {
      key = "ctrl+alt+win+n";
      command = "welcome.showNewFileEntries";
    }

    {
      key = "ctrl+w";
      command = "workbench.action.closeActiveEditor";
    }

    {
      key = "ctrl+f4";
      command = "workbench.action.closeActiveEditor";
    }

    {
      key = "ctrl+k ctrl+w";
      command = "workbench.action.closeAllEditors";
    }

    {
      key = "ctrl+k ctrl+shift+w";
      command = "workbench.action.closeAllGroups";
    }

    {
      key = "ctrl+k w";
      command = "workbench.action.closeEditorsInGroup";
    }

    {
      key = "ctrl+k f";
      command = "workbench.action.closeFolder";
      when = "emptyWorkspaceSupport && workbenchState != 'empty'";
    }

    {
      key = "ctrl+w";
      command = "workbench.action.closeGroup";
      when = "activeEditorGroupEmpty && multipleEditorGroups";
    }

    {
      key = "ctrl+f4";
      command = "workbench.action.closeGroup";
      when = "activeEditorGroupEmpty && multipleEditorGroups";
    }

    {
      key = "shift+escape";
      command = "workbench.action.closeQuickOpen";
      when = "inQuickOpen";
    }

    {
      key = "escape";
      command = "workbench.action.closeQuickOpen";
      when = "inQuickOpen";
    }

    {
      key = "ctrl+k u";
      command = "workbench.action.closeUnmodifiedEditors";
    }

    {
      key = "ctrl+shift+w";
      command = "workbench.action.closeWindow";
    }

    {
      key = "alt+f4";
      command = "workbench.action.closeWindow";
    }

    {
      key = "alt+f5";
      command = "workbench.action.compareEditor.nextChange";
      when = "textCompareEditorVisible";
    }

    {
      key = "shift+alt+f5";
      command = "workbench.action.compareEditor.previousChange";
      when = "textCompareEditorVisible";
    }

    {
      key = "shift+f5";
      command = "workbench.action.debug.disconnect";
      when = "focusedSessionIsAttach && inDebugMode";
    }

    {
      key = "ctrl+shift+f5";
      command = "workbench.action.debug.restart";
      when = "inDebugMode";
    }

    {
      key = "ctrl+f5";
      command = "workbench.action.debug.run";
      when = "debuggersAvailable && debugState != 'initializing'";
    }

    {
      key = "f5";
      command = "workbench.action.debug.start";
      when = "debuggersAvailable && debugState == 'inactive'";
    }

    {
      key = "ctrl+f11";
      command = "workbench.action.debug.stepIntoTarget";
      when = "inDebugMode && stepIntoTargetsSupported && debugState == 'stopped'";
    }

    {
      key = "shift+f11";
      command = "workbench.action.debug.stepOut";
      when = "debugState == 'stopped'";
    }

    {
      key = "f10";
      command = "workbench.action.debug.stepOver";
      when = "debugState == 'stopped'";
    }

    {
      key = "shift+f5";
      command = "workbench.action.debug.stop";
      when = "inDebugMode && !focusedSessionIsAttach";
    }

    {
      key = "ctrl+k m";
      command = "workbench.action.editor.changeLanguageMode";
      when = "!notebookEditorFocused";
    }

    {
      key = "ctrl+k p";
      command = "workbench.action.files.copyPathOfActiveFile";
    }

    {
      key = "ctrl+n";
      command = "workbench.action.files.newUntitledFile";
    }

    {
      key = "ctrl+o";
      command = "workbench.action.files.openFile";
      when = "true";
    }

    {
      key = "ctrl+o";
      command = "workbench.action.files.openFileFolder";
      when = "isMacNative && openFolderWorkspaceSupport";
    }

    {
      key = "ctrl+k ctrl+o";
      command = "workbench.action.files.openFolder";
      when = "openFolderWorkspaceSupport";
    }

    {
      key = "ctrl+o";
      command = "workbench.action.files.openFolderViaWorkspace";
      when = "!openFolderWorkspaceSupport && workbenchState == 'workspace'";
    }

    {
      key = "ctrl+o";
      command = "workbench.action.files.openLocalFile";
      when = "remoteFileDialogVisible";
    }

    {
      key = "ctrl+k ctrl+o";
      command = "workbench.action.files.openLocalFolder";
      when = "remoteFileDialogVisible";
    }

    {
      key = "ctrl+k r";
      command = "workbench.action.files.revealActiveFileInWindows";
    }

    {
      key = "ctrl+s";
      command = "workbench.action.files.save";
    }

    {
      key = "ctrl+shift+s";
      command = "workbench.action.files.saveAs";
    }

    {
      key = "ctrl+shift+s";
      command = "workbench.action.files.saveLocalFile";
      when = "remoteFileDialogVisible";
    }

    {
      key = "ctrl+k ctrl+shift+s";
      command = "workbench.action.files.saveWithoutFormatting";
    }

    {
      key = "ctrl+k o";
      command = "workbench.action.files.showOpenedFileInNewWindow";
      when = "emptyWorkspaceSupport";
    }

    {
      key = "ctrl+shift+f";
      command = "workbench.action.findInFiles";
    }

    {
      key = "ctrl+k ctrl+up";
      command = "workbench.action.focusAboveGroup";
    }

    {
      key = "ctrl+k ctrl+down";
      command = "workbench.action.focusBelowGroup";
    }

    {
      key = "ctrl+8";
      command = "workbench.action.focusEighthEditorGroup";
    }

    {
      key = "ctrl+5";
      command = "workbench.action.focusFifthEditorGroup";
    }

    {
      key = "ctrl+1";
      command = "workbench.action.focusFirstEditorGroup";
    }

    {
      key = "ctrl+4";
      command = "workbench.action.focusFourthEditorGroup";
    }

    {
      key = "ctrl+k ctrl+left";
      command = "workbench.action.focusLeftGroup";
    }

    {
      key = "f6";
      command = "workbench.action.focusNextPart";
    }

    {
      key = "shift+f6";
      command = "workbench.action.focusPreviousPart";
    }

    {
      key = "ctrl+k ctrl+right";
      command = "workbench.action.focusRightGroup";
    }

    {
      key = "ctrl+2";
      command = "workbench.action.focusSecondEditorGroup";
    }

    {
      key = "ctrl+7";
      command = "workbench.action.focusSeventhEditorGroup";
    }

    {
      key = "ctrl+0";
      command = "workbench.action.focusSideBar";
    }

    {
      key = "ctrl+6";
      command = "workbench.action.focusSixthEditorGroup";
    }

    {
      key = "ctrl+3";
      command = "workbench.action.focusThirdEditorGroup";
    }

    {
      key = "ctrl+g";
      command = "workbench.action.gotoLine";
    }

    {
      key = "ctrl+shift+o";
      command = "workbench.action.gotoSymbol";
    }

    {
      key = "escape";
      command = "workbench.action.hideInterfaceOverview";
      when = "interfaceOverviewVisible";
    }

    {
      key = "down";
      command = "workbench.action.interactivePlayground.arrowDown";
      when = "interactivePlaygroundFocus && !editorTextFocus";
    }

    {
      key = "up";
      command = "workbench.action.interactivePlayground.arrowUp";
      when = "interactivePlaygroundFocus && !editorTextFocus";
    }

    {
      key = "pagedown";
      command = "workbench.action.interactivePlayground.pageDown";
      when = "interactivePlaygroundFocus && !editorTextFocus";
    }

    {
      key = "pageup";
      command = "workbench.action.interactivePlayground.pageUp";
      when = "interactivePlaygroundFocus && !editorTextFocus";
    }

    {
      key = "ctrl+k ctrl+shift+\\";
      command = "workbench.action.joinEditorInGroup";
      when = "sideBySideEditorActive";
    }

    {
      key = "ctrl+k enter";
      command = "workbench.action.keepEditor";
    }

    {
      key = "ctrl+k ctrl+r";
      command = "workbench.action.keybindingsReference";
    }

    {
      key = "ctrl+9";
      command = "workbench.action.lastEditorInGroup";
    }

    {
      key = "alt+0";
      command = "workbench.action.lastEditorInGroup";
    }

    {
      key = "ctrl+k down";
      command = "workbench.action.moveActiveEditorGroupDown";
    }

    {
      key = "ctrl+k left";
      command = "workbench.action.moveActiveEditorGroupLeft";
    }

    {
      key = "ctrl+k right";
      command = "workbench.action.moveActiveEditorGroupRight";
    }

    {
      key = "ctrl+k up";
      command = "workbench.action.moveActiveEditorGroupUp";
    }

    {
      key = "ctrl+shift+pageup";
      command = "workbench.action.moveEditorLeftInGroup";
    }

    {
      key = "ctrl+shift+pagedown";
      command = "workbench.action.moveEditorRightInGroup";
    }

    {
      key = "shift+alt+1";
      command = "workbench.action.moveEditorToFirstGroup";
    }

    {
      key = "shift+alt+9";
      command = "workbench.action.moveEditorToLastGroup";
    }

    {
      key = "ctrl+alt+right";
      command = "workbench.action.moveEditorToNextGroup";
    }

    {
      key = "ctrl+alt+left";
      command = "workbench.action.moveEditorToPreviousGroup";
    }

    {
      key = "alt+left";
      command = "workbench.action.navigateBack";
      when = "canNavigateBack";
    }

    {
      key = "alt+right";
      command = "workbench.action.navigateForward";
      when = "canNavigateForward";
    }

    {
      key = "ctrl+k ctrl+q";
      command = "workbench.action.navigateToLastEditLocation";
    }

    {
      key = "ctrl+shift+n";
      command = "workbench.action.newWindow";
    }

    {
      key = "ctrl+pagedown";
      command = "workbench.action.nextEditor";
    }

    {
      key = "ctrl+k ctrl+pagedown";
      command = "workbench.action.nextEditorInGroup";
    }

    {
      key = "alt+1";
      command = "workbench.action.openEditorAtIndex1";
    }

    {
      key = "alt+2";
      command = "workbench.action.openEditorAtIndex2";
    }

    {
      key = "alt+3";
      command = "workbench.action.openEditorAtIndex3";
    }

    {
      key = "alt+4";
      command = "workbench.action.openEditorAtIndex4";
    }

    {
      key = "alt+5";
      command = "workbench.action.openEditorAtIndex5";
    }

    {
      key = "alt+6";
      command = "workbench.action.openEditorAtIndex6";
    }

    {
      key = "alt+7";
      command = "workbench.action.openEditorAtIndex7";
    }

    {
      key = "alt+8";
      command = "workbench.action.openEditorAtIndex8";
    }

    {
      key = "alt+9";
      command = "workbench.action.openEditorAtIndex9";
    }

    {
      key = "ctrl+k ctrl+s";
      command = "workbench.action.openGlobalKeybindings";
    }

    {
      key = "ctrl+r";
      command = "workbench.action.openRecent";
    }

    {
      key = "ctrl+,";
      command = "workbench.action.openSettings";
    }

    {
      key = "ctrl+shift+u";
      command = "workbench.action.output.toggleOutput";
      when = "workbench.panel.output.active";
    }

    {
      key = "ctrl+k shift+enter";
      command = "workbench.action.pinEditor";
      when = "!activeEditorIsPinned";
    }

    {
      key = "ctrl+pageup";
      command = "workbench.action.previousEditor";
    }

    {
      key = "ctrl+k ctrl+pageup";
      command = "workbench.action.previousEditorInGroup";
    }

    {
      key = "ctrl+e";
      command = "workbench.action.quickOpen";
    }

    {
      key = "ctrl+p";
      command = "workbench.action.quickOpen";
    }

    {
      key = "ctrl+shift+tab";
      command = "workbench.action.quickOpenLeastRecentlyUsedEditorInGroup";
      when = "!activeEditorGroupEmpty";
    }

    {
      key = "ctrl+tab";
      command = "workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup";
      when = "!activeEditorGroupEmpty";
    }

    {
      key = "ctrl+q";
      command = "workbench.action.quickOpenView";
    }

    {
      key = "ctrl+shift+t";
      command = "workbench.action.reopenClosedEditor";
    }

    {
      key = "ctrl+shift+h";
      command = "workbench.action.replaceInFiles";
    }

    {
      key = "ctrl+shift+j";
      command = "workbench.action.search.toggleQueryDetails";
      when = "inSearchEditor || searchViewletFocus";
    }

    {
      key = "ctrl+k ctrl+t";
      command = "workbench.action.selectTheme";
    }

    {
      key = "ctrl+k ctrl+p";
      command = "workbench.action.showAllEditors";
    }

    {
      key = "ctrl+t";
      command = "workbench.action.showAllSymbols";
    }

    {
      key = "f1";
      command = "workbench.action.showCommands";
    }

    {
      key = "ctrl+shift+p";
      command = "workbench.action.showCommands";
    }

    {
      key = "ctrl+k ctrl+i";
      command = "workbench.action.showTreeHover";
      when = "customTreeView && listFocus && !inputFocus";
    }

    {
      key = "ctrl+\\";
      command = "workbench.action.splitEditor";
    }

    {
      key = "ctrl+k ctrl+shift+\\";
      command = "workbench.action.splitEditorInGroup";
      when = "activeEditorCanSplitInGroup";
    }

    {
      key = "ctrl+k ctrl+\\";
      command = "workbench.action.splitEditorOrthogonal";
    }

    {
      key = "ctrl+shift+b";
      command = "workbench.action.tasks.build";
      when = "taskCommandsRegistered";
    }

    {
      key = "escape";
      command = "workbench.action.terminal.clearSelection";
      when = "terminalFocus && terminalHasBeenCreated && terminalTextSelected && !terminalFindVisible || terminalFocus && terminalProcessSupported && terminalTextSelected && !terminalFindVisible";
    }

    {
      key = "ctrl+shift+c";
      command = "workbench.action.terminal.copySelection";
      when = "terminalFocus && terminalHasBeenCreated && terminalTextSelected || terminalFocus && terminalProcessSupported && terminalTextSelected";
    }

    {
      key = "ctrl+c";
      command = "workbench.action.terminal.copySelection";
      when = "terminalFocus && terminalHasBeenCreated && terminalTextSelected || terminalFocus && terminalProcessSupported && terminalTextSelected";
    }

    {
      key = "f3";
      command = "workbench.action.terminal.findNext";
      when = "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported";
    }

    {
      key = "shift+enter";
      command = "workbench.action.terminal.findNext";
      when = "terminalFindInputFocused && terminalHasBeenCreated || terminalFindInputFocused && terminalProcessSupported";
    }

    {
      key = "shift+f3";
      command = "workbench.action.terminal.findPrevious";
      when = "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported";
    }

    {
      key = "enter";
      command = "workbench.action.terminal.findPrevious";
      when = "terminalFindInputFocused && terminalHasBeenCreated || terminalFindInputFocused && terminalProcessSupported";
    }

    {
      key = "ctrl+f";
      command = "workbench.action.terminal.focusFind";
      when = "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported";
    }

    {
      key = "ctrl+pagedown";
      command = "workbench.action.terminal.focusNext";
      when = "terminalFocus && terminalHasBeenCreated && !terminalEditorFocus || terminalFocus && terminalProcessSupported && !terminalEditorFocus";
    }

    {
      key = "alt+down";
      command = "workbench.action.terminal.focusNextPane";
      when = "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported";
    }

    {
      key = "alt+right";
      command = "workbench.action.terminal.focusNextPane";
      when = "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported";
    }

    {
      key = "ctrl+pageup";
      command = "workbench.action.terminal.focusPrevious";
      when = "terminalFocus && terminalHasBeenCreated && !terminalEditorFocus || terminalFocus && terminalProcessSupported && !terminalEditorFocus";
    }

    {
      key = "alt+up";
      command = "workbench.action.terminal.focusPreviousPane";
      when = "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported";
    }

    {
      key = "alt+left";
      command = "workbench.action.terminal.focusPreviousPane";
      when = "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported";
    }

    {
      key = "ctrl+shift+\\";
      command = "workbench.action.terminal.focusTabs";
      when = "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported || terminalHasBeenCreated && terminalTabsFocus || terminalProcessSupported && terminalTabsFocus";
    }

    {
      key = "shift+escape";
      command = "workbench.action.terminal.hideFind";
      when = "terminalFindVisible && terminalFocus && terminalHasBeenCreated || terminalFindVisible && terminalFocus && terminalProcessSupported";
    }

    {
      key = "escape";
      command = "workbench.action.terminal.hideFind";
      when = "terminalFindVisible && terminalFocus && terminalHasBeenCreated || terminalFindVisible && terminalFocus && terminalProcessSupported";
    }

    {
      key = "ctrl+w";
      command = "workbench.action.terminal.killEditor";
      when = "terminalEditorFocus && terminalFocus && terminalHasBeenCreated && resourceScheme == 'vscode-terminal' || terminalEditorFocus && terminalFocus && terminalProcessSupported && resourceScheme == 'vscode-terminal'";
    }

    {
      key = "ctrl+f4";
      command = "workbench.action.terminal.killEditor";
      when = "terminalEditorFocus && terminalFocus && terminalHasBeenCreated && resourceScheme == 'vscode-terminal' || terminalEditorFocus && terminalFocus && terminalProcessSupported && resourceScheme == 'vscode-terminal'";
    }

    {
      key = "delete";
      command = "workbench.action.terminal.killInstance";
      when = "terminalHasBeenCreated && terminalTabsFocus || terminalIsOpen && terminalTabsFocus || terminalProcessSupported && terminalTabsFocus";
    }

    {
      key = "escape";
      command = "workbench.action.terminal.navigationModeExit";
      when = "accessibilityModeEnabled && terminalA11yTreeFocus && terminalProcessSupported";
    }

    {
      key = "down";
      command = "workbench.action.terminal.navigationModeFocusNext";
      when = "accessibilityModeEnabled && terminalA11yTreeFocus && terminalNavigationModeActive && terminalProcessSupported || accessibilityModeEnabled && terminalFocus && terminalNavigationModeActive && terminalProcessSupported";
    }

    {
      key = "ctrl+down";
      command = "workbench.action.terminal.navigationModeFocusNext";
      when = "accessibilityModeEnabled && terminalA11yTreeFocus && terminalProcessSupported || accessibilityModeEnabled && terminalFocus && terminalProcessSupported";
    }

    {
      key = "pagedown";
      command = "workbench.action.terminal.navigationModeFocusNextPage";
      when = "accessibilityModeEnabled && terminalA11yTreeFocus && terminalNavigationModeActive && terminalProcessSupported || accessibilityModeEnabled && terminalFocus && terminalNavigationModeActive && terminalProcessSupported";
    }

    {
      key = "up";
      command = "workbench.action.terminal.navigationModeFocusPrevious";
      when = "accessibilityModeEnabled && terminalA11yTreeFocus && terminalNavigationModeActive && terminalProcessSupported || accessibilityModeEnabled && terminalFocus && terminalNavigationModeActive && terminalProcessSupported";
    }

    {
      key = "ctrl+up";
      command = "workbench.action.terminal.navigationModeFocusPrevious";
      when = "accessibilityModeEnabled && terminalA11yTreeFocus && terminalProcessSupported || accessibilityModeEnabled && terminalFocus && terminalProcessSupported";
    }

    {
      key = "pageup";
      command = "workbench.action.terminal.navigationModeFocusPreviousPage";
      when = "accessibilityModeEnabled && terminalA11yTreeFocus && terminalNavigationModeActive && terminalProcessSupported || accessibilityModeEnabled && terminalFocus && terminalNavigationModeActive && terminalProcessSupported";
    }

    {
      key = "ctrl+shift+`";
      command = "workbench.action.terminal.new";
      when = "terminalProcessSupported || terminalWebExtensionContributedProfile";
    }

    {
      key = "ctrl+shift+c";
      command = "workbench.action.terminal.openNativeConsole";
      when = "!terminalFocus";
    }

    {
      key = "ctrl+shift+v";
      command = "workbench.action.terminal.paste";
      when = "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported";
    }

    {
      key = "ctrl+v";
      command = "workbench.action.terminal.paste";
      when = "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported";
    }

    {
      key = "f2";
      command = "workbench.action.terminal.renameInstance";
      when = "terminalHasBeenCreated && terminalTabsFocus && terminalTabsSingularSelection || terminalProcessSupported && terminalTabsFocus && terminalTabsSingularSelection";
    }

    {
      key = "ctrl+alt+pagedown";
      command = "workbench.action.terminal.scrollDown";
      when = "terminalFocus && terminalHasBeenCreated && !terminalAltBufferActive || terminalFocus && terminalProcessSupported && !terminalAltBufferActive";
    }

    {
      key = "shift+pagedown";
      command = "workbench.action.terminal.scrollDownPage";
      when = "terminalFocus && terminalHasBeenCreated && !terminalAltBufferActive || terminalFocus && terminalProcessSupported && !terminalAltBufferActive";
    }

    {
      key = "ctrl+end";
      command = "workbench.action.terminal.scrollToBottom";
      when = "terminalFocus && terminalHasBeenCreated && !terminalAltBufferActive || terminalFocus && terminalProcessSupported && !terminalAltBufferActive";
    }

    {
      key = "ctrl+down";
      command = "workbench.action.terminal.scrollToNextCommand";
      when = "terminalFocus && terminalHasBeenCreated && !accessibilityModeEnabled || terminalFocus && terminalProcessSupported && !accessibilityModeEnabled";
    }

    {
      key = "ctrl+up";
      command = "workbench.action.terminal.scrollToPreviousCommand";
      when = "terminalFocus && terminalHasBeenCreated && !accessibilityModeEnabled || terminalFocus && terminalProcessSupported && !accessibilityModeEnabled";
    }

    {
      key = "ctrl+home";
      command = "workbench.action.terminal.scrollToTop";
      when = "terminalFocus && terminalHasBeenCreated && !terminalAltBufferActive || terminalFocus && terminalProcessSupported && !terminalAltBufferActive";
    }

    {
      key = "ctrl+alt+pageup";
      command = "workbench.action.terminal.scrollUp";
      when = "terminalFocus && terminalHasBeenCreated && !terminalAltBufferActive || terminalFocus && terminalProcessSupported && !terminalAltBufferActive";
    }

    {
      key = "shift+pageup";
      command = "workbench.action.terminal.scrollUpPage";
      when = "terminalFocus && terminalHasBeenCreated && !terminalAltBufferActive || terminalFocus && terminalProcessSupported && !terminalAltBufferActive";
    }

    {
      key = "ctrl+shift+down";
      command = "workbench.action.terminal.selectToNextCommand";
      when = "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported";
    }

    {
      key = "ctrl+shift+up";
      command = "workbench.action.terminal.selectToPreviousCommand";
      when = "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported";
    }

    {
      key = "ctrl+v";
      command = "workbench.action.terminal.sendSequence";
      when = "terminalFocus && !accessibilityModeEnabled && terminalShellType == 'pwsh'";
      args = {
        text = "\u0016";
      };
    }

    {
      key = "ctrl+space";
      command = "workbench.action.terminal.sendSequence";
      when = "terminalFocus && terminalShellIntegrationEnabled && !accessibilityModeEnabled && terminalShellType == 'pwsh'";
      args = {
        text = "\u001b[24~a";
      };
    }

    {
      key = "alt+space";
      command = "workbench.action.terminal.sendSequence";
      when = "terminalFocus && terminalShellIntegrationEnabled && !accessibilityModeEnabled && terminalShellType == 'pwsh'";
      args = {
        text = "\u001b[24~b";
      };
    }

    {
      key = "shift+enter";
      command = "workbench.action.terminal.sendSequence";
      when = "terminalFocus && terminalShellIntegrationEnabled && !accessibilityModeEnabled && terminalShellType == 'pwsh'";
      args = {
        text = "\u001b[24~c";
      };
    }

    {
      key = "ctrl+backspace";
      command = "workbench.action.terminal.sendSequence";
      when = "terminalFocus";
      args = {
        text = "\u0017";
      };
    }

    {
      key = "ctrl+backspace";
      command = "workbench.action.terminal.sendSequence";
      when = "terminalFocus && terminalShellType == 'cmd'";
      args = {
        text = "\b";
      };
    }

    {
      key = "ctrl+delete";
      command = "workbench.action.terminal.sendSequence";
      when = "terminalFocus";
      args = {
        text = "\u001bd";
      };
    }

    {
      key = "ctrl+shift+2";
      command = "workbench.action.terminal.sendSequence";
      when = "terminalFocus";
      args = {
        text = "\u0000";
      };
    }

    {
      key = "ctrl+shift+6";
      command = "workbench.action.terminal.sendSequence";
      when = "terminalFocus";
      args = {
        text = "\u001e";
      };
    }

    {
      key = "ctrl+/";
      command = "workbench.action.terminal.sendSequence";
      when = "terminalFocus";
      args = {
        text = "\u001f";
      };
    }

    {
      key = "alt+z";
      command = "workbench.action.terminal.sizeToContentWidth";
      when = "terminalFocus && terminalHasBeenCreated && terminalIsOpen || terminalFocus && terminalIsOpen && terminalProcessSupported";
    }

    {
      key = "ctrl+shift+5";
      command = "workbench.action.terminal.split";
      when = "terminalFocus && terminalProcessSupported || terminalFocus && terminalWebExtensionContributedProfile";
    }

    {
      key = "ctrl+shift+5";
      command = "workbench.action.terminal.splitInstance";
      when = "terminalProcessSupported && terminalTabsFocus";
    }

    {
      key = "alt+c";
      command = "workbench.action.terminal.toggleFindCaseSensitive";
      when = "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported";
    }

    {
      key = "alt+r";
      command = "workbench.action.terminal.toggleFindRegex";
      when = "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported";
    }

    {
      key = "alt+w";
      command = "workbench.action.terminal.toggleFindWholeWord";
      when = "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported";
    }

    {
      key = "ctrl+`";
      command = "workbench.action.terminal.toggleTerminal";
      when = "terminal.active";
    }

    {
      key = "shift+alt+0";
      command = "workbench.action.toggleEditorGroupLayout";
    }

    {
      key = "f11";
      command = "workbench.action.toggleFullScreen";
      when = "!isIOS";
    }

    {
      key = "ctrl+j";
      command = "workbench.action.togglePanel";
    }

    {
      key = "ctrl+b";
      command = "workbench.action.toggleSidebarVisibility";
    }

    {
      key = "ctrl+k z";
      command = "workbench.action.toggleZenMode";
    }

    {
      key = "ctrl+k shift+enter";
      command = "workbench.action.unpinEditor";
      when = "activeEditorIsPinned";
    }

    {
      key = "ctrl+numpad_add";
      command = "workbench.action.zoomIn";
    }

    {
      key = "ctrl+shift+=";
      command = "workbench.action.zoomIn";
    }

    {
      key = "ctrl+=";
      command = "workbench.action.zoomIn";
    }

    {
      key = "ctrl+numpad_subtract";
      command = "workbench.action.zoomOut";
    }

    {
      key = "ctrl+shift+-";
      command = "workbench.action.zoomOut";
    }

    {
      key = "ctrl+-";
      command = "workbench.action.zoomOut";
    }

    {
      key = "ctrl+numpad0";
      command = "workbench.action.zoomReset";
    }

    {
      key = "ctrl+shift+m";
      command = "workbench.actions.view.problems";
      when = "workbench.panel.markers.view.active";
    }

    {
      key = "escape";
      command = "workbench.banner.focusBanner";
      when = "bannerFocused";
    }

    {
      key = "down";
      command = "workbench.banner.focusNextAction";
      when = "bannerFocused";
    }

    {
      key = "right";
      command = "workbench.banner.focusNextAction";
      when = "bannerFocused";
    }

    {
      key = "up";
      command = "workbench.banner.focusPreviousAction";
      when = "bannerFocused";
    }

    {
      key = "left";
      command = "workbench.banner.focusPreviousAction";
      when = "bannerFocused";
    }

    {
      key = "ctrl+shift+y";
      command = "workbench.debug.action.toggleRepl";
      when = "workbench.panel.repl.view.active";
    }

    {
      key = "ctrl+k c";
      command = "workbench.files.action.compareWithClipboard";
    }

    {
      key = "ctrl+k d";
      command = "workbench.files.action.compareWithSaved";
    }

    {
      key = "ctrl+k e";
      command = "workbench.files.action.focusOpenEditorsView";
      when = "workbench.explorer.openEditorsView.active";
    }

    {
      key = "escape";
      command = "workbench.statusBar.clearFocus";
      when = "statusBarFocused";
    }

    {
      key = "home";
      command = "workbench.statusBar.focusFirst";
      when = "statusBarFocused";
    }

    {
      key = "end";
      command = "workbench.statusBar.focusLast";
      when = "statusBarFocused";
    }

    {
      key = "down";
      command = "workbench.statusBar.focusNext";
      when = "statusBarFocused";
    }

    {
      key = "right";
      command = "workbench.statusBar.focusNext";
      when = "statusBarFocused";
    }

    {
      key = "up";
      command = "workbench.statusBar.focusPrevious";
      when = "statusBarFocused";
    }

    {
      key = "left";
      command = "workbench.statusBar.focusPrevious";
      when = "statusBarFocused";
    }

    {
      key = "ctrl+shift+d";
      command = "workbench.view.debug";
      when = "viewContainer.workbench.view.debug.enabled";
    }

    {
      key = "ctrl+shift+e";
      command = "workbench.view.explorer";
      when = "viewContainer.workbench.view.explorer.enabled";
    }

    {
      key = "ctrl+shift+x";
      command = "workbench.view.extensions";
      when = "viewContainer.workbench.view.extensions.enabled";
    }

    {
      key = "ctrl+shift+g";
      command = "workbench.view.scm";
      when = "workbench.scm.active";
    }

    {
      key = "ctrl+shift+f";
      command = "workbench.view.search";
      when = "workbench.view.search.active && neverMatch =~ /doesNotMatch/";
    }

    {
      key = "ctrl+right";
      command = "breadcrumbs.focusNextWithPicker";
      when = "breadcrumbsActive && breadcrumbsVisible && listFocus && !inputFocus";
    }

    {
      key = "ctrl+left";
      command = "breadcrumbs.focusPreviousWithPicker";
      when = "breadcrumbsActive && breadcrumbsVisible && listFocus && !inputFocus";
    }

    {
      key = "escape";
      command = "breadcrumbs.selectEditor";
      when = "breadcrumbsActive && breadcrumbsVisible";
    }

    {
      key = "ctrl+k down";
      command = "views.moveViewDown";
      when = "focusedView != ''";
    }

    {
      key = "ctrl+k left";
      command = "views.moveViewLeft";
      when = "focusedView != ''";
    }

    {
      key = "ctrl+k right";
      command = "views.moveViewRight";
      when = "focusedView != ''";
    }

    {
      key = "ctrl+k up";
      command = "views.moveViewUp";
      when = "focusedView != ''";
    }

    {
      key = "ctrl+pagedown";
      command = "workbench.action.debug.nextConsole";
      when = "inDebugRepl";
    }

    {
      key = "ctrl+pageup";
      command = "workbench.action.debug.prevConsole";
      when = "inDebugRepl";
    }

    {
      key = "f6";
      command = "workbench.action.debug.pause";
      when = "debugState == 'running'";
    }

    {
      key = "f2";
      command = "debug.renameWatchExpression";
      when = "watchExpressionsFocused";
    }

    {
      key = "f2";
      command = "debug.setVariable";
      when = "variablesFocused";
    }

    {
      key = "space";
      command = "debug.toggleBreakpoint";
      when = "breakpointsFocused && !inputFocus";
    }

    {
      key = "shift+delete";
      command = "deleteFile";
      when = "explorerViewletVisible && filesExplorerFocus && !explorerResourceReadonly && !inputFocus";
    }

    {
      key = "delete";
      command = "deleteFile";
      when = "explorerViewletVisible && filesExplorerFocus && !explorerResourceMoveableToTrash && !explorerResourceReadonly && !inputFocus";
    }

    {
      key = "escape";
      command = "editor.closeCallHierarchy";
      when = "callHierarchyVisible && !config.editor.stablePeek";
    }

    {
      key = "escape";
      command = "editor.closeTypeHierarchy";
      when = "typeHierarchyVisible && !config.editor.stablePeek";
    }

    {
      key = "enter";
      command = "explorer.openAndPassFocus";
      when = "explorerViewletVisible && filesExplorerFocus && !explorerResourceIsFolder && !inputFocus";
    }

    {
      key = "escape";
      command = "filesExplorer.cancelCut";
      when = "explorerResourceCut && explorerViewletVisible && filesExplorerFocus && !inputFocus";
    }

    {
      key = "ctrl+c";
      command = "filesExplorer.copy";
      when = "explorerViewletVisible && filesExplorerFocus && !explorerResourceIsRoot && !inputFocus";
    }

    {
      key = "ctrl+x";
      command = "filesExplorer.cut";
      when = "explorerViewletVisible && filesExplorerFocus && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus";
    }

    {
      key = "space";
      command = "filesExplorer.openFilePreserveFocus";
      when = "explorerViewletVisible && filesExplorerFocus && !explorerResourceIsFolder && !inputFocus";
    }

    {
      key = "ctrl+v";
      command = "filesExplorer.paste";
      when = "explorerViewletVisible && filesExplorerFocus && !explorerResourceReadonly && !inputFocus";
    }

    {
      key = "home";
      command = "firstCompressedFolder";
      when = "explorerViewletCompressedFocus && explorerViewletVisible && filesExplorerFocus && !explorerViewletCompressedFirstFocus && !inputFocus";
    }

    {
      key = "end";
      command = "lastCompressedFolder";
      when = "explorerViewletCompressedFocus && explorerViewletVisible && filesExplorerFocus && !explorerViewletCompressedLastFocus && !inputFocus";
    }

    {
      key = "delete";
      command = "moveFileToTrash";
      when = "explorerResourceMoveableToTrash && explorerViewletVisible && filesExplorerFocus && !explorerResourceReadonly && !inputFocus";
    }

    {
      key = "right";
      command = "nextCompressedFolder";
      when = "explorerViewletCompressedFocus && explorerViewletVisible && filesExplorerFocus && !explorerViewletCompressedLastFocus && !inputFocus";
    }

    {
      key = "left";
      command = "previousCompressedFolder";
      when = "explorerViewletCompressedFocus && explorerViewletVisible && filesExplorerFocus && !explorerViewletCompressedFirstFocus && !inputFocus";
    }

    {
      key = "delete";
      command = "remote.tunnel.closeInline";
      when = "tunnelCloseable && tunnelViewFocus";
    }

    {
      key = "ctrl+c";
      command = "remote.tunnel.copyAddressInline";
      when = "tunnelViewFocus && tunnelType == 'Detected' && tunnelViewMultiSelection == 'undefined' || tunnelViewFocus && tunnelType == 'Forwarded' && tunnelViewMultiSelection == 'undefined'";
    }

    {
      key = "f2";
      command = "remote.tunnel.label";
      when = "tunnelViewFocus && tunnelType == 'Forwarded' && tunnelViewMultiSelection == 'undefined'";
    }

    {
      key = "f2";
      command = "renameFile";
      when = "explorerViewletVisible && filesExplorerFocus && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus";
    }

    {
      key = "f5";
      command = "workbench.action.debug.continue";
      when = "debugState == 'stopped'";
    }

    {
      key = "f11";
      command = "workbench.action.debug.stepInto";
      when = "debugState != 'inactive'";
    }

    {
      key = "shift+escape";
      command = "closeReferenceSearch";
      when = "referenceSearchVisible && !config.editor.stablePeek";
    }

    {
      key = "escape";
      command = "closeReferenceSearch";
      when = "referenceSearchVisible && !config.editor.stablePeek";
    }

    {
      key = "escape";
      command = "notifications.hideList";
      when = "notificationCenterVisible";
    }

    {
      key = "alt+left";
      command = "workbench.action.quickInputBack";
      when = "inQuickOpen";
    }

    {
      key = "ctrl+tab";
      command = "workbench.action.quickOpenNavigateNextInEditorPicker";
      when = "inEditorsPicker && inQuickOpen";
    }

    {
      key = "ctrl+e";
      command = "workbench.action.quickOpenNavigateNextInFilePicker";
      when = "inFilesPicker && inQuickOpen";
    }

    {
      key = "ctrl+p";
      command = "workbench.action.quickOpenNavigateNextInFilePicker";
      when = "inFilesPicker && inQuickOpen";
    }

    {
      key = "ctrl+r";
      command = "workbench.action.quickOpenNavigateNextInRecentFilesPicker";
      when = "inQuickOpen && inRecentFilesPicker";
    }

    {
      key = "ctrl+q";
      command = "workbench.action.quickOpenNavigateNextInViewPicker";
      when = "inQuickOpen && inViewsPicker";
    }

    {
      key = "ctrl+shift+tab";
      command = "workbench.action.quickOpenNavigatePreviousInEditorPicker";
      when = "inEditorsPicker && inQuickOpen";
    }

    {
      key = "ctrl+shift+e";
      command = "workbench.action.quickOpenNavigatePreviousInFilePicker";
      when = "inFilesPicker && inQuickOpen";
    }

    {
      key = "ctrl+shift+p";
      command = "workbench.action.quickOpenNavigatePreviousInFilePicker";
      when = "inFilesPicker && inQuickOpen";
    }

    {
      key = "ctrl+shift+r";
      command = "workbench.action.quickOpenNavigatePreviousInRecentFilesPicker";
      when = "inQuickOpen && inRecentFilesPicker";
    }

    {
      key = "ctrl+shift+q";
      command = "workbench.action.quickOpenNavigatePreviousInViewPicker";
      when = "inQuickOpen && inViewsPicker";
    }

    {
      key = "ctrl+r";
      command = "workbench.action.reloadWindow";
      when = "isDevelopment";
    }

    {
      key = "ctrl+shift+f";
      command = "workbench.action.terminal.searchWorkspace";
      when = "terminalFocus && terminalProcessSupported && terminalTextSelected";
    }

    {
      key = "ctrl+shift+i";
      command = "workbench.action.toggleDevTools";
      when = "isDevelopment";
    }

    {
      key = "escape";
      command = "notifications.hideToasts";
      when = "notificationFocus && notificationToastsVisible";
    }

    {
      key = "f10";
      command = "extension.node-debug.startWithStopOnEntry";
      when = "!inDebugMode && debugConfigurationType == 'node' || !inDebugMode && debugConfigurationType == 'pwa-extensionHost' || !inDebugMode && debugConfigurationType == 'pwa-node'";
    }

    {
      key = "ctrl+k ctrl+alt+s";
      command = "git.stageSelectedRanges";
      when = "isInDiffEditor";
    }

    {
      key = "ctrl+shift+v";
      command = "markdown.showPreview";
      when = "!notebookEditorFocused && editorLangId == 'markdown'";
    }

    {
      key = "shift+alt+f12";
      command = "references-view.findReferences";
      when = "editorHasReferenceProvider";
    }

    {
      key = "f11";
      command = "extension.node-debug.startWithStopOnEntry";
      when = "!inDebugMode && activeViewlet == 'workbench.view.debug' && debugConfigurationType == 'node' || !inDebugMode && activeViewlet == 'workbench.view.debug' && debugConfigurationType == 'pwa-extensionHost' || !inDebugMode && activeViewlet == 'workbench.view.debug' && debugConfigurationType == 'pwa-node'";
    }

    {
      key = "ctrl+k ctrl+n";
      command = "git.unstageSelectedRanges";
      when = "isInDiffEditor";
    }

    {
      key = "ctrl+k v";
      command = "markdown.showPreviewToSide";
      when = "!notebookEditorFocused && editorLangId == 'markdown'";
    }

    {
      key = "f4";
      command = "references-view.next";
      when = "reference-list.hasResult && references-view.canNavigate";
    }

    {
      key = "ctrl+k ctrl+r";
      command = "git.revertSelectedRanges";
      when = "isInDiffEditor";
    }

    {
      key = "shift+f4";
      command = "references-view.prev";
      when = "reference-list.hasResult && references-view.canNavigate";
    }

    {
      key = "shift+alt+h";
      command = "references-view.showCallHierarchy";
      when = "editorHasCallHierarchyProvider";
    }

    {
      key = "ctrl+down";
      command = "focusNextCodeAction";
      when = "CodeActionMenuVisible";
    }

    {
      key = "down";
      command = "focusNextCodeAction";
      when = "CodeActionMenuVisible";
    }

    {
      key = "ctrl+up";
      command = "focusPreviousCodeAction";
      when = "CodeActionMenuVisible";
    }

    {
      key = "up";
      command = "focusPreviousCodeAction";
      when = "CodeActionMenuVisible";
    }

    {
      key = "shift+tab";
      command = "onEnterSelectCodeAction";
      when = "CodeActionMenuVisible";
    }

    {
      key = "enter";
      command = "onEnterSelectCodeAction";
      when = "CodeActionMenuVisible";
    }

    {
      key = "ctrl+enter";
      command = "onEnterSelectCodeActionWithPreview";
      when = "CodeActionMenuVisible";
    }
  ];
}
