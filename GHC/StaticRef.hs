-----------------------------------------------------------------------------
-- |
-- Module      :  GHC.StaticRef
-- Copyright   :  (c) Tweag I/O, 2014
-- License     :  see libraries/base/LICENSE
--
-- Maintainer  :  cvs-ghc@haskell.org
-- Stability   :  internal
-- Portability :  non-portable (GHC Extensions)
--
-- References to static values.
--
-- The form @static e@ produces terms of type @StaticRef a@ when @e :: a@
-- and the StaticValues language extension is enabled.
--
-----------------------------------------------------------------------------

module GHC.StaticRef where

-- | A reference to a top-level value of type 'a'.
newtype StaticRef a = StaticRef GlobalName

-- | Global names identifying top-level values.
data GlobalName = GlobalName String -- ^ Package name
                             String -- ^ Package version
                             String -- ^ Module name
                             String -- ^ Value name

