/*
 *  config.dart
 *
 *  Created by Ilia Chirkunov <xc@yar.net> on 12.12.2020.
 */

class Config {
  static const title = 'Jambo FM';
  static const description = 'Jambo FM votre radio digitalisée';
  static const streamUrl =
      'https://cast6.asurahosting.com/proxy/infinit7/stream';

  // Social links
  static const instagram = '';
  static const twitter = '';
  static const facebook = 'https://www.facebook.com/jambofm91';
  static const website = '';
  static const email = '';

  // Share
  static const shareSubject = 'Jambo FM App';
  static const shareText = "I'm Listening to Jambo FM.";

  // Rate Us
  static const appStoreId = '0123456789';

  // Automatically start playing when the app is launched.
  static const autoplay = false;

  // Replace default image with album cover.
  static const showAlbumCover = true;

  // Search album cover on iTunes.
  static const albumCoverFromItunes = true;

  // Long text scrolling.
  static const textScrolling = true;

  // See documentation to enable Admob.
  static const admobIosAdUnit = 'ca-app-pub-3940256099942544/6300978111';
  static const admobAndroidAdUnit = 'ca-app-pub-3940256099942544/6300978111';

  // Parse metadata from third-party sources.
  static const metadataUrl = '';
  static const artistTag = 'artist';
  static const trackTag = 'title';
  static const coverTag = 'thumb';
  static const titleTag = '';
  static const titleSeparator = ' - ';
  static const timerPeriod = 2;
}
