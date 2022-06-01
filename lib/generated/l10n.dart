// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Available Balance`
  String get componentsPageHeaderTitulo {
    return Intl.message(
      'Available Balance',
      name: 'componentsPageHeaderTitulo',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get componentsPageHeaderOpcPageSend {
    return Intl.message(
      'Send',
      name: 'componentsPageHeaderOpcPageSend',
      desc: '',
      args: [],
    );
  }

  /// `Request`
  String get componentsPageHeaderOpcPageRequest {
    return Intl.message(
      'Request',
      name: 'componentsPageHeaderOpcPageRequest',
      desc: '',
      args: [],
    );
  }

  /// `Loan`
  String get componentsPageHeaderOpcPageLoan {
    return Intl.message(
      'Loan',
      name: 'componentsPageHeaderOpcPageLoan',
      desc: '',
      args: [],
    );
  }

  /// `Topup`
  String get componentsPageHeaderOpcPageTopup {
    return Intl.message(
      'Topup',
      name: 'componentsPageHeaderOpcPageTopup',
      desc: '',
      args: [],
    );
  }

  /// `Your Cards`
  String get pageCardContentTitulo {
    return Intl.message(
      'Your Cards',
      name: 'pageCardContentTitulo',
      desc: '',
      args: [],
    );
  }

  /// `2 Physical Card, and 1 Virtual Card`
  String get pageCardContentSubTitulo {
    return Intl.message(
      '2 Physical Card, and 1 Virtual Card',
      name: 'pageCardContentSubTitulo',
      desc: '',
      args: [],
    );
  }

  /// `Physical Card`
  String get pageCardContentCardPhysicalTitulo {
    return Intl.message(
      'Physical Card',
      name: 'pageCardContentCardPhysicalTitulo',
      desc: '',
      args: [],
    );
  }

  /// `Virtual Card`
  String get pageCardContentCardVirtualTitulo {
    return Intl.message(
      'Virtual Card',
      name: 'pageCardContentCardVirtualTitulo',
      desc: '',
      args: [],
    );
  }

  /// `VISA`
  String get pageCardContentCardPhysicalTipo {
    return Intl.message(
      'VISA',
      name: 'pageCardContentCardPhysicalTipo',
      desc: '',
      args: [],
    );
  }

  /// `CARD HOLDER`
  String get pageCardContentCardPhysicalEstado {
    return Intl.message(
      'CARD HOLDER',
      name: 'pageCardContentCardPhysicalEstado',
      desc: '',
      args: [],
    );
  }

  /// `EXPIRES`
  String get pageCardContentCardPhysicalExpires {
    return Intl.message(
      'EXPIRES',
      name: 'pageCardContentCardPhysicalExpires',
      desc: '',
      args: [],
    );
  }

  /// `Card Settings`
  String get pageCardContentCardConfig {
    return Intl.message(
      'Card Settings',
      name: 'pageCardContentCardConfig',
      desc: '',
      args: [],
    );
  }

  /// `Contactless Payment`
  String get pageCardContentCardConfigConectarPagos {
    return Intl.message(
      'Contactless Payment',
      name: 'pageCardContentCardConfigConectarPagos',
      desc: '',
      args: [],
    );
  }

  /// `Online Payment`
  String get pageCardContentCardConfigPagosEnLinea {
    return Intl.message(
      'Online Payment',
      name: 'pageCardContentCardConfigPagosEnLinea',
      desc: '',
      args: [],
    );
  }

  /// `ATM Withdraws`
  String get pageCardContentCardConfigATM {
    return Intl.message(
      'ATM Withdraws',
      name: 'pageCardContentCardConfigATM',
      desc: '',
      args: [],
    );
  }

  /// `Recent Transactions`
  String get pageHomeContentTitulo {
    return Intl.message(
      'Recent Transactions',
      name: 'pageHomeContentTitulo',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get pageHomeContentTituloOpc {
    return Intl.message(
      'See All',
      name: 'pageHomeContentTituloOpc',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get pageHomeContentTituloBtnOpc {
    return Intl.message(
      'All',
      name: 'pageHomeContentTituloBtnOpc',
      desc: '',
      args: [],
    );
  }

  /// `Income`
  String get pageHomeContentTituloEstado1 {
    return Intl.message(
      'Income',
      name: 'pageHomeContentTituloEstado1',
      desc: '',
      args: [],
    );
  }

  /// `Expenses`
  String get pageHomeContentTituloEstado2 {
    return Intl.message(
      'Expenses',
      name: 'pageHomeContentTituloEstado2',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get pageHomeContentHoy {
    return Intl.message(
      'Today',
      name: 'pageHomeContentHoy',
      desc: '',
      args: [],
    );
  }

  /// `Payment from user`
  String get pageHomeContentOperacionTitulo {
    return Intl.message(
      'Payment from user',
      name: 'pageHomeContentOperacionTitulo',
      desc: '',
      args: [],
    );
  }

  /// `YESTERDAY`
  String get pageHomeContentAyer {
    return Intl.message(
      'YESTERDAY',
      name: 'pageHomeContentAyer',
      desc: '',
      args: [],
    );
  }

  /// `List Contacts`
  String get pageContactsContentTitulo {
    return Intl.message(
      'List Contacts',
      name: 'pageContactsContentTitulo',
      desc: '',
      args: [],
    );
  }

  /// `4 Contacts Available`
  String get pageContactsContentSubTitulo {
    return Intl.message(
      '4 Contacts Available',
      name: 'pageContactsContentSubTitulo',
      desc: '',
      args: [],
    );
  }

  /// `Friend`
  String get pageContactsContentTipo {
    return Intl.message(
      'Friend',
      name: 'pageContactsContentTipo',
      desc: '',
      args: [],
    );
  }

  /// `Member New`
  String get pageContactsContentEstado {
    return Intl.message(
      'Member New',
      name: 'pageContactsContentEstado',
      desc: '',
      args: [],
    );
  }

  /// `Exit`
  String get pageContactsContentSalir {
    return Intl.message(
      'Exit',
      name: 'pageContactsContentSalir',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get pageContactsContentAyuda {
    return Intl.message(
      'Help',
      name: 'pageContactsContentAyuda',
      desc: '',
      args: [],
    );
  }

  /// `Assistence`
  String get pageContactsContentAsistencia {
    return Intl.message(
      'Assistence',
      name: 'pageContactsContentAsistencia',
      desc: '',
      args: [],
    );
  }

  /// `Basic Account`
  String get pageProfileContentCuenta {
    return Intl.message(
      'Basic Account',
      name: 'pageProfileContentCuenta',
      desc: '',
      args: [],
    );
  }

  /// `Your Information`
  String get pageProfileContentTitulo {
    return Intl.message(
      'Your Information',
      name: 'pageProfileContentTitulo',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get pageProfileContentDetalleUbicacion {
    return Intl.message(
      'Location',
      name: 'pageProfileContentDetalleUbicacion',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get pageProfileContentDetalleCorreo {
    return Intl.message(
      'Email',
      name: 'pageProfileContentDetalleCorreo',
      desc: '',
      args: [],
    );
  }

  /// `Telephon`
  String get pageProfileContentDetalleTMovil {
    return Intl.message(
      'Telephon',
      name: 'pageProfileContentDetalleTMovil',
      desc: '',
      args: [],
    );
  }

  /// `About Me`
  String get pageProfileContentDetalleYo {
    return Intl.message(
      'About Me',
      name: 'pageProfileContentDetalleYo',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
