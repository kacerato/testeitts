package com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem;

import Ic.C2636o;
import Ic.InterfaceC2638q;
import N7.f;
import Od.l;
import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.security.keystore.KeyProperties;
import android.util.Log;
import android.widget.Button;
import android.widget.Toast;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Panels.Objects.ObjectsPanel;
import com.itsmagic.engine.Engines.Native.OHString.OHStringSerializer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.tonyodev.fetch2core.FetchCoreUtils;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

public class Lang {

    public static final AtomicBoolean f70086a;

    public static final AtomicBoolean f70087b;

    public static final CountDownLatch f70088c;

    public static final Object f70089d;

    public static Settings f70090e;

    public static LanguageData f70091f;

    public static LanguageData f70092g;

    @InterfaceC2638q
    public static class Settings {

        @Expose
        public String selectedLanguage = "en-us";
    }

    @InterfaceC2638q
    public static class T {
        public static final Ac.b OBJECTS = Ac.c.a(ObjectsPanel.f71767d0);
        public static final Ac.b ON_LANGUAGE_CHANGED = Ac.c.a("ON_LANGUAGE_CHANGED");
        public static final Ac.b FILES = Ac.c.a("Files");
        public static final Ac.b CONSOLE = Ac.c.a("Console");
        public static final Ac.b TERMINAL = Ac.c.a("Terminal");
        public static final Ac.b PROPERTIES = Ac.c.a("Properties");
        public static final Ac.b GAME = Ac.c.a("Game");
        public static final Ac.b D3_EDITOR = Ac.c.a("3D Editor");
        public static final Ac.b CODING = Ac.c.a("Coding");
        public static final Ac.b PROFILER = Ac.c.a("Profiler");
        public static final Ac.b CPU_PANEL_TITLE = Ac.c.a("CPU_PANEL_TITLE");
        public static final Ac.b CPU_PANEL_MENU = Ac.c.a("CPU_PANEL_MENU");
        public static final Ac.b CPU_PANEL_SUBTITLE_60_SECONDS = Ac.c.a("CPU_PANEL_SUBTITLE_60_SECONDS");
        public static final Ac.b CPU_PANEL_READ_FAILED = Ac.c.a("CPU_PANEL_READ_FAILED");
        public static final Ac.b CPU_PANEL_UTILIZATION = Ac.c.a("CPU_PANEL_UTILIZATION");
        public static final Ac.b CPU_PANEL_SPEED = Ac.c.a("CPU_PANEL_SPEED");
        public static final Ac.b CPU_PANEL_BASE_SPEED = Ac.c.a("CPU_PANEL_BASE_SPEED");
        public static final Ac.b CPU_PANEL_LOGICAL_PROCESSORS = Ac.c.a("CPU_PANEL_LOGICAL_PROCESSORS");
        public static final Ac.b CPU_PANEL_CORE = Ac.c.a("CPU_PANEL_CORE");
        public static final Ac.b CPU_PANEL_MAX = Ac.c.a("CPU_PANEL_MAX");
        public static final Ac.b USER_PROFILE = Ac.c.a("User-Profile");
        public static final Ac.b APPLY = Ac.c.a("Apply");
        public static final Ac.b ADD_COINS = Ac.c.a("Add-Coins");
        public static final Ac.b ADD_FUNDS = Ac.c.a("Add-Funds");
        public static final Ac.b MANAGE_VIP = Ac.c.a("Manage-Vip");
        public static final Ac.b SUCCESS = Ac.c.a("SUCCESS");
        public static final Ac.b PROCESSING_PURCHASE = Ac.c.a("Processing purchase");
        public static final Ac.b STATISTIC = Ac.c.a("Statistic");
        public static final Ac.b HOME = Ac.c.a("Home");
        public static final Ac.b ROTATE = Ac.c.a("Rotate");
        public static final Ac.b CANCEL = Ac.c.a("CANCEL");
        public static final Ac.b BACK = Ac.c.a("BACK");
        public static final Ac.b CONFIRM = Ac.c.a("CONFIRM");
        public static final Ac.b CREATE = Ac.c.a("CREATE");
        public static final Ac.b IMPORT = Ac.c.a("Import");
        public static final Ac.b WRITE_PERMISSION_FAILED = Ac.c.a("WRITE_PERMISSION_FAILED");
        public static final Ac.b READ_PERMISSION_IS_REQUIRED = Ac.c.a("READ_PERMISSION_IS_REQUIRED");
        public static final Ac.b READ_DIRECTORY_IS_REQUIRED = Ac.c.a("READ_DIRECTORY_IS_REQUIRED");
        public static final Ac.b SELECT = Ac.c.a("Select");
        public static final Ac.b IMPORTING = Ac.c.a("Importing");
        public static final Ac.b PLEASE_WAIT_A_SECOND = Ac.c.a("Please wait a second");
        public static final Ac.b GIVE_PERMISSION = Ac.c.a("Give permission");
        public static final Ac.b SELECT_FILES = Ac.c.a("Select files");
        public static final Ac.b PREVIEW_IN_PROJECT = Ac.c.a("Preview in project");
        public static final Ac.b PLEASE_IMPORT_FIRST = Ac.c.a("PLEASE_IMPORT_FIRST");
        public static final Ac.b HIGH_DEFINITION_RENDERING_ALERT = Ac.c.a("HIGH_DEFINITION_RENDERING_ALERT");
        public static final Ac.b HIGH_DEFINITION_RENDERING_ANDROID_VERSION = Ac.c.a("HIGH_DEFINITION_RENDERING_ANDROID_VERSION");
        public static final Ac.b SUB_VIP_1_WEEK = Ac.c.a("SUB_VIP_1_WEEK");
        public static final Ac.b CONTINUE = Ac.c.a("CONTINUE");
        public static final Ac.b NEW_EMPTY_PROJECT_PANEL = Ac.c.a("NEW_EMPTY_PROJECT_PANEL");
        public static final Ac.b ARE_YOU_SURE = Ac.c.a("ARE_YOU_SURE");
        public static final Ac.b USERNAME = Ac.c.a("USERNAME");
        public static final Ac.b PASSWORD = Ac.c.a("PASSWORD");
        public static final Ac.b WELCOME_LOGIN = Ac.c.a("WELCOME_LOGIN");
        public static final Ac.b WELCOME_REGISTER = Ac.c.a("WELCOME_REGISTER");
        public static final Ac.b NEW_ACCOUNT_TEXT = Ac.c.a("NEW_ACCOUNT_TEXT");
        public static final Ac.b ACCESS = Ac.c.a("ACCESS");
        public static final Ac.b REGISTER = Ac.c.a("REGISTER");
        public static final Ac.b CONFIRM_PASSWORD = Ac.c.a("CONFIRM_PASSWORD");
        public static final Ac.b ACCEPT_THE_TERMS_OF_SERVICE = Ac.c.a("ACCEPT_THE_TERMS_OF_SERVICE");
        public static final Ac.b TAP_HERE_TO_READ = Ac.c.a("TAP_HERE_TO_READ");
        public static final Ac.b USERNAME_TOO_BIG = Ac.c.a("USERNAME_TOO_BIG");
        public static final Ac.b PASSWORD_TOO_BIG = Ac.c.a("PASSWORD_TOO_BIG");
        public static final Ac.b USERNAME_ALREADY_TAKEN = Ac.c.a("USERNAME_ALREADY_TAKEN");
        public static final Ac.b USERNAME_CANT_BE_EMPTY = Ac.c.a("USERNAME_CANT_BE_EMPTY");
        public static final Ac.b PASSWORD_CANT_BE_EMPTY = Ac.c.a("PASSWORD_CANT_BE_EMPTY");
        public static final Ac.b CONFIRM_PASSWORD_CANT_BE_EMPTY = Ac.c.a("CONFIRM_PASSWORD_CANT_BE_EMPTY");
        public static final Ac.b PASSWORD_DOESNT_MATCH = Ac.c.a("PASSWORD_DOESNT_MATCH");
        public static final Ac.b INVALID_CREDENTIALS_NEW_USER = Ac.c.a("INVALID_CREDENTIALS_NEW_USER");
        public static final Ac.b VIP_MEMBER_PANEL = Ac.c.a("VIP_MEMBER_PANEL");
        public static final Ac.b VIP_PROMOTION_TITTLE_BECOME_VIP_MEMBER = Ac.c.a("VIP_PROMOTION_TITTLE_BECOME_VIP_MEMBER");
        public static final Ac.b VIP_PROMOTION_TITTLE_FOR_LESS_THAN_SNACK = Ac.c.a("VIP_PROMOTION_TITTLE_FOR_LESS_THAN_SNACK");
        public static final Ac.b VIP_PROMOTION_TITTLE_STOP_ADS = Ac.c.a("VIP_PROMOTION_TITTLE_STOP_ADS");
        public static final Ac.b VIP_PROMOTION_ITEM_LIST_NO_ADS = Ac.c.a("VIP_PROMOTION_ITEM_LIST_NO_ADS");
        public static final Ac.b VIP_PROMOTION_ITEM_LIST_USE_WITHOUT_INTERNET = Ac.c.a("VIP_PROMOTION_ITEM_LIST_USE_WITHOUT_INTERNET");
        public static final Ac.b VIP_PROMOTION_ITEM_LIST_EXPORT_FREE = Ac.c.a("VIP_PROMOTION_ITEM_LIST_EXPORT_FREE");
        public static final Ac.b VIP_PROMOTION_ITEM_LIST_EXPORT_TO_PLAY_STORE = Ac.c.a("VIP_PROMOTION_ITEM_LIST_EXPORT_TO_PLAY_STORE");
        public static final Ac.b VIP_PROMOTION_ITEM_LIST_SELL_PACKAGES_AND_EARN_MONEY = Ac.c.a("VIP_PROMOTION_ITEM_LIST_SELL_PACKAGES_AND_EARN_MONEY");
        public static final Ac.b VIP_PROMOTION_ITEM_LIST_OFFICIAL_PACKAGE_RELEASE = Ac.c.a("VIP_PROMOTION_ITEM_LIST_OFFICIAL_PACKAGE_RELEASE");
        public static final Ac.b VIP_PROMOTION_ITEM_LIST_UPLOAD_30_MB_PACKAGES = Ac.c.a("VIP_PROMOTION_ITEM_LIST_UPLOAD_30_MB_PACKAGES");
        public static final Ac.b VIP_PROMOTION_MONTHLY = Ac.c.a("VIP_PROMOTION_MONTHLY");
        public static final Ac.b VIP_PROMOTION_MONTH = Ac.c.a("VIP_PROMOTION_MONTH");
        public static final Ac.b VIP_PROMOTION_YEARLY = Ac.c.a("VIP_PROMOTION_YEARLY");
        public static final Ac.b VIP_PROMOTION_PER_YEAR = Ac.c.a("VIP_PROMOTION_PER_YEAR");
        public static final Ac.b VIP_COIN_SUBSCRIPTION = Ac.c.a("VIP_COIN_SUBSCRIPTION");
        public static final Ac.b BECOME_VIP = Ac.c.a("BECOME_VIP");
        public static final Ac.b NO_VIP_ERROR_PANEL_TEXT = Ac.c.a("NO_VIP_ERROR_PANEL_TEXT");
        public static final Ac.b STORE = Ac.c.a("STORE");
        public static final Ac.b STORE_HOME = Ac.c.a("STORE_HOME");
        public static final Ac.b STORE_MY_PACKAGES = Ac.c.a("STORE_MY_PACKAGES");
        public static final Ac.b STORE_PROMOTIONS = Ac.c.a("STORE_PROMOTIONS");
        public static final Ac.b STORE_DASHBOARD = Ac.c.a("STORE_DASHBOARD");
        public static final Ac.b STORE_MY_PACKAGES_SALE = Ac.c.a("STORE_MY_PACKAGES_SALE");
        public static final Ac.b STORE_SEARCH = Ac.c.a("STORE_SEARCH");
        public static final Ac.b STORE_FILTER = Ac.c.a("STORE_FILTER");
        public static final Ac.b STORE_FILTER_ONLY_FREE = Ac.c.a("STORE_FILTER_ONLY_FREE");
        public static final Ac.b STORE_VIEWER_ABOUT_THIS_PACKAGE = Ac.c.a("STORE_VIEWER_ABOUT_THIS_PACKAGE");
        public static final Ac.b STORE_VIEWER_CREATOR_CONTACT = Ac.c.a("STORE_VIEWER_CREATOR_CONTACT");
        public static final Ac.b STORE_VIEWER_COMMENTS = Ac.c.a("STORE_VIEWER_COMMENTS");
        public static final Ac.b STORE_VIEWER_RATE_THIS_PRODUCT = Ac.c.a("STORE_VIEWER_RATE_THIS_PRODUCT");
        public static final Ac.b STORE_REPOSITORY_UNAVAILABLE = Ac.c.a("STORE_REPOSITORY_UNAVAILABLE");
        public static final Ac.b STORE_REPOSITORY_NOT_PROVIDED = Ac.c.a("STORE_REPOSITORY_NOT_PROVIDED");
        public static final Ac.b STORE_REPOSITORY_LOADING_FILES = Ac.c.a("STORE_REPOSITORY_LOADING_FILES");
        public static final Ac.b STORE_REPOSITORY_LOAD_FAILED = Ac.c.a("STORE_REPOSITORY_LOAD_FAILED");
        public static final Ac.b STORE_REPOSITORY_NO_FILES = Ac.c.a("STORE_REPOSITORY_NO_FILES");
        public static final Ac.b STORE_USER_NOT_LOGGED = Ac.c.a("STORE_USER_NOT_LOGGED");
        public static final Ac.b STORE_VIEW_MORE = Ac.c.a("STORE_VIEW_MORE");
        public static final Ac.b STORE_ABOUT_INFORMATION = Ac.c.a("STORE_ABOUT_INFORMATION");
        public static final Ac.b STORE_PURCHASE = Ac.c.a("STORE_PURCHASE");
        public static final Ac.b STORE_FREE = Ac.c.a("STORE_FREE");
        public static final Ac.b STORE_VIP_COINS = Ac.c.a("STORE_VIP_COINS");
        public static final Ac.b STORE_VIP_FUNDS = Ac.c.a("STORE_VIP_FUNDS");
        public static final Ac.b STORE_INSTALL = Ac.c.a("STORE_INSTALL");
        public static final Ac.b STORE_UNINSTALL = Ac.c.a("STORE_UNINSTALL");
        public static final Ac.b STORE_IMPORT = Ac.c.a("STORE_IMPORT");
        public static final Ac.b STORE_UPDATE = Ac.c.a("STORE_UPDATE");
        public static final Ac.b STORE_PRICE = Ac.c.a("STORE_PRICE");
        public static final Ac.b STORE_PRICE_IN_DOLAR_CENTS = Ac.c.a("STORE_PRICE_IN_DOLAR_CENTS");
        public static final Ac.b STORE_PRICE_IN_COINS = Ac.c.a("STORE_PRICE_IN_COINS");
        public static final Ac.b STORE_FILTER_DATE_FO = Ac.c.a("STORE_FILTER_DATE_FO");
        public static final Ac.b STORE_FILTER_DATE_OF = Ac.c.a("STORE_FILTER_DATE_OF");
        public static final Ac.b STORE_FILTER_PRICE_LH = Ac.c.a("STORE_FILTER_PRICE_LH");
        public static final Ac.b STORE_FILTER_PRICE_HL = Ac.c.a("STORE_FILTER_PRICE_HL");
        public static final Ac.b STORE_FILTER_DOWNLOADS_LH = Ac.c.a("STORE_FILTER_DOWNLOADS_LH");
        public static final Ac.b STORE_FILTER_DOWNLOADS_HL = Ac.c.a("STORE_FILTER_DOWNLOADS_HL");
        public static final Ac.b STORE_PUBLISHER_NAME = Ac.c.a("STORE_PUBLISHER_NAME");
        public static final Ac.b STORE_SORT_BY = Ac.c.a("STORE_SORT_BY");
        public static final Ac.b STORE_NEW_PRODUCT = Ac.c.a("STORE_NEW_PRODUCT");
        public static final Ac.b STORE_EDIT_TEXT = Ac.c.a("STORE_EDIT_TEXT");
        public static final Ac.b STORE_PACKAGE_EDITOR = Ac.c.a("STORE_PACKAGE_EDITOR");
        public static final Ac.b STORE_COINS = Ac.c.a("STORE_COINS");
        public static final Ac.b STORE_FUNDS = Ac.c.a("STORE_FUNDS");
        public static final Ac.b STORE_FROM = Ac.c.a("STORE_FROM");
        public static final Ac.b STORE_MONEY = Ac.c.a("STORE_MONEY");
        public static final Ac.b STORE_DISCOUNT = Ac.c.a("STORE_DISCOUNT");
        public static final Ac.b STORE_YOU_RECEIVE = Ac.c.a("STORE_YOU_RECEIVE");
        public static final Ac.b STORE_WHY = Ac.c.a("STORE_WHY");
        public static final Ac.b STORE_WARNING_USER_PRO_SELL_PRODUCTS_MONEY = Ac.c.a("STORE_WARNING_USER_PRO_SELL_PRODUCTS_MONEY");
        public static final Ac.b STORE_ERROR_NOT_ENOUGH_FUNDS = Ac.c.a("STORE_ERROR_NOT_ENOUGH_FUNDS");
        public static final Ac.b STORE_ERROR_NOT_ENOUGH_COINS = Ac.c.a("STORE_ERROR_NOT_ENOUGH_COINS");
        public static final Ac.b STORE_ERROR_BUY_TO_PURCHASE_PACKS = Ac.c.a("STORE_ERROR_BUY_TO_PURCHASE_PACKS");
        public static final Ac.b STORE_ERROR_PURCHASE_BUTTON = Ac.c.a("STORE_ERROR_PURCHASE_BUTTON");
        public static final Ac.b STORE_ERROR_NOT_LOGIN_TEXT = Ac.c.a("STORE_ERROR_NOT_LOGIN_TEXT");
        public static final Ac.b STORE_INFORMATION = Ac.c.a("STORE_INFORMATION");
        public static final Ac.b STORE_GRADES_AND_RATINGS = Ac.c.a("STORE_GRADES_AND_RATINGS");
        public static final Ac.b STORE_RATINGS_IN_TOTAL = Ac.c.a("STORE_RATINGS_IN_TOTAL");
        public static final Ac.b STORE_YOUR_EVALUATION = Ac.c.a("STORE_YOUR_EVALUATION");
        public static final Ac.b STORE_PUBLISH = Ac.c.a("STORE_PUBLISH");
        public static final Ac.b STORE_OTHERS_PEOPLE_REVIEWS = Ac.c.a("STORE_OTHERS_PEOPLE_REVIEWS");
        public static final Ac.b STORE_VERSIONING_AND_CONTENT = Ac.c.a("STORE_VERSIONING_AND_CONTENT");
        public static final Ac.b STORE_UPLOAD_NEW_VERSION = Ac.c.a("STORE_UPLOAD_NEW_VERSION");
        public static final Ac.b STORE_CREATE_PACKAGE = Ac.c.a("STORE_CREATE_PACKAGE");
        public static final Ac.b STORE_MANAGE = Ac.c.a("STORE_MANAGE");
        public static final Ac.b STORE_DELETE_PACKAGE = Ac.c.a("STORE_DELETE_PACKAGE");
        public static final Ac.b STORE_GITHUB_SHARE_GROUP = Ac.c.a("STORE_GITHUB_SHARE_GROUP");
        public static final Ac.b STORE_GITHUB_SHARE_MENU = Ac.c.a("STORE_GITHUB_SHARE_MENU");
        public static final Ac.b STORE_GITHUB_UPDATE_MENU = Ac.c.a("STORE_GITHUB_UPDATE_MENU");
        public static final Ac.b STORE_GITHUB_FILE_SELECTOR_TITLE = Ac.c.a("STORE_GITHUB_FILE_SELECTOR_TITLE");
        public static final Ac.b STORE_GITHUB_FILE_SELECTOR_EMPTY_TITLE = Ac.c.a("STORE_GITHUB_FILE_SELECTOR_EMPTY_TITLE");
        public static final Ac.b STORE_GITHUB_FILE_SELECTOR_EMPTY_DESCRIPTION = Ac.c.a("STORE_GITHUB_FILE_SELECTOR_EMPTY_DESCRIPTION");
        public static final Ac.b STORE_GITHUB_FORM_TITLE = Ac.c.a("STORE_GITHUB_FORM_TITLE");
        public static final Ac.b STORE_GITHUB_PUBLISH_BUTTON = Ac.c.a("STORE_GITHUB_PUBLISH_BUTTON");
        public static final Ac.b STORE_GITHUB_SELECTED_FILES = Ac.c.a("STORE_GITHUB_SELECTED_FILES");
        public static final Ac.b STORE_GITHUB_SELECTED_FILES_COUNT = Ac.c.a("STORE_GITHUB_SELECTED_FILES_COUNT");
        public static final Ac.b STORE_GITHUB_REPOSITORY_NAME = Ac.c.a("STORE_GITHUB_REPOSITORY_NAME");
        public static final Ac.b STORE_GITHUB_THUMBNAIL = Ac.c.a("STORE_GITHUB_THUMBNAIL");
        public static final Ac.b STORE_GITHUB_IMAGES = Ac.c.a("STORE_GITHUB_IMAGES");
        public static final Ac.b STORE_GITHUB_DESCRIPTION = Ac.c.a("STORE_GITHUB_DESCRIPTION");
        public static final Ac.b STORE_GITHUB_LICENSE = Ac.c.a("STORE_GITHUB_LICENSE");
        public static final Ac.b STORE_GITHUB_TAGS = Ac.c.a("STORE_GITHUB_TAGS");
        public static final Ac.b STORE_GITHUB_TAGS_HINT = Ac.c.a("STORE_GITHUB_TAGS_HINT");
        public static final Ac.b STORE_GITHUB_SELECT_THUMBNAIL = Ac.c.a("STORE_GITHUB_SELECT_THUMBNAIL");
        public static final Ac.b STORE_GITHUB_ADD_IMAGE = Ac.c.a("STORE_GITHUB_ADD_IMAGE");
        public static final Ac.b STORE_GITHUB_NO_THUMBNAIL_SELECTED = Ac.c.a("STORE_GITHUB_NO_THUMBNAIL_SELECTED");
        public static final Ac.b STORE_GITHUB_NO_IMAGES_SELECTED = Ac.c.a("STORE_GITHUB_NO_IMAGES_SELECTED");
        public static final Ac.b STORE_GITHUB_IMAGES_HINT = Ac.c.a("STORE_GITHUB_IMAGES_HINT");
        public static final Ac.b STORE_GITHUB_IMAGES_REQUIRED = Ac.c.a("STORE_GITHUB_IMAGES_REQUIRED");
        public static final Ac.b STORE_GITHUB_IMAGES_LIMIT_REACHED = Ac.c.a("STORE_GITHUB_IMAGES_LIMIT_REACHED");
        public static final Ac.b STORE_GITHUB_THUMBNAIL_REQUIRED = Ac.c.a("STORE_GITHUB_THUMBNAIL_REQUIRED");
        public static final Ac.b STORE_GITHUB_REQUIRED_FIELD = Ac.c.a("STORE_GITHUB_REQUIRED_FIELD");
        public static final Ac.b STORE_GITHUB_INVALID_USERNAME = Ac.c.a("STORE_GITHUB_INVALID_USERNAME");
        public static final Ac.b STORE_GITHUB_INVALID_REPOSITORY = Ac.c.a("STORE_GITHUB_INVALID_REPOSITORY");
        public static final Ac.b STORE_GITHUB_INVALID_TAGS = Ac.c.a("STORE_GITHUB_INVALID_TAGS");
        public static final Ac.b STORE_GITHUB_WARNING_TITLE = Ac.c.a("STORE_GITHUB_WARNING_TITLE");
        public static final Ac.b STORE_GITHUB_TOKEN_MISSING = Ac.c.a("STORE_GITHUB_TOKEN_MISSING");
        public static final Ac.b STORE_GITHUB_SETUP_MISSING = Ac.c.a("STORE_GITHUB_SETUP_MISSING");
        public static final Ac.b STORE_GITHUB_SETTINGS_NOTE = Ac.c.a("STORE_GITHUB_SETTINGS_NOTE");
        public static final Ac.b STORE_GITHUB_SETTINGS_TOKEN_HELP = Ac.c.a("STORE_GITHUB_SETTINGS_TOKEN_HELP");
        public static final Ac.b STORE_GITHUB_ORGANIZATION = Ac.c.a("STORE_GITHUB_ORGANIZATION");
        public static final Ac.b STORE_GITHUB_ORGANIZATION_NONE = Ac.c.a("STORE_GITHUB_ORGANIZATION_NONE");
        public static final Ac.b STORE_GITHUB_SETTINGS_ORGANIZATION_HELP = Ac.c.a("STORE_GITHUB_SETTINGS_ORGANIZATION_HELP");
        public static final Ac.b STORE_GITHUB_REFRESH_ORGANIZATIONS = Ac.c.a("STORE_GITHUB_REFRESH_ORGANIZATIONS");
        public static final Ac.b STORE_GITHUB_ORGANIZATIONS_REFRESHED = Ac.c.a("STORE_GITHUB_ORGANIZATIONS_REFRESHED");
        public static final Ac.b STORE_GITHUB_USERNAME = Ac.c.a("STORE_GITHUB_USERNAME");
        public static final Ac.b STORE_GITHUB_TOKEN = Ac.c.a("STORE_GITHUB_TOKEN");
        public static final Ac.b STORE_GITHUB_PROGRESS_AUTHENTICATING = Ac.c.a("STORE_GITHUB_PROGRESS_AUTHENTICATING");
        public static final Ac.b STORE_GITHUB_PROGRESS_CREATING_REPOSITORY = Ac.c.a("STORE_GITHUB_PROGRESS_CREATING_REPOSITORY");
        public static final Ac.b STORE_GITHUB_PROGRESS_UPLOADING_PROJECT_FILES = Ac.c.a("STORE_GITHUB_PROGRESS_UPLOADING_PROJECT_FILES");
        public static final Ac.b STORE_GITHUB_PROGRESS_FORKING_MANIFEST = Ac.c.a("STORE_GITHUB_PROGRESS_FORKING_MANIFEST");
        public static final Ac.b STORE_GITHUB_PROGRESS_UPLOADING_MANIFEST_FILES = Ac.c.a("STORE_GITHUB_PROGRESS_UPLOADING_MANIFEST_FILES");
        public static final Ac.b STORE_GITHUB_PROGRESS_OPENING_PULL_REQUEST = Ac.c.a("STORE_GITHUB_PROGRESS_OPENING_PULL_REQUEST");
        public static final Ac.b STORE_GITHUB_PUBLISH_SUCCESS = Ac.c.a("STORE_GITHUB_PUBLISH_SUCCESS");
        public static final Ac.b STORE_GITHUB_UPDATE_SUCCESS = Ac.c.a("STORE_GITHUB_UPDATE_SUCCESS");
        public static final Ac.b STORE_GITHUB_ERROR_INVALID_TOKEN = Ac.c.a("STORE_GITHUB_ERROR_INVALID_TOKEN");
        public static final Ac.b STORE_GITHUB_ERROR_USER_MISMATCH = Ac.c.a("STORE_GITHUB_ERROR_USER_MISMATCH");
        public static final Ac.b STORE_GITHUB_ERROR_REPOSITORY_EXISTS = Ac.c.a("STORE_GITHUB_ERROR_REPOSITORY_EXISTS");
        public static final Ac.b STORE_GITHUB_ERROR_PULL_REQUEST_EXISTS = Ac.c.a("STORE_GITHUB_ERROR_PULL_REQUEST_EXISTS");
        public static final Ac.b STORE_GITHUB_ERROR_NETWORK = Ac.c.a("STORE_GITHUB_ERROR_NETWORK");
        public static final Ac.b STORE_GITHUB_ERROR_GENERIC = Ac.c.a("STORE_GITHUB_ERROR_GENERIC");
        public static final Ac.b STORE_RESOLVE_ERRORS_SEND_PACKAGE = Ac.c.a("STORE_RESOLVE_ERRORS_SEND_PACKAGE");
        public static final Ac.b STORE_ERROR_DEFAULT_NAME = Ac.c.a("STORE_ERROR_DEFAULT_NAME");
        public static final Ac.b STORE_ERROR_WITHOUT_ICON = Ac.c.a("STORE_ERROR_WITHOUT_ICON");
        public static final Ac.b STORE_ERROR_WITHOUT_MEDIA = Ac.c.a("STORE_ERROR_WITHOUT_MEDIA");
        public static final Ac.b STORE_ERROR_WITHOUT_TAG = Ac.c.a("STORE_ERROR_WITHOUT_TAG");
        public static final Ac.b STORE_ERROR_WITHOUT_DESCRIPTION = Ac.c.a("STORE_ERROR_WITHOUT_DESCRIPTION");
        public static final Ac.b NO_INTERNET_CONNECTION_TITTLE = Ac.c.a("NO_INTERNET_CONNECTION_TITTLE");
        public static final Ac.b NO_INTERNET_CONNECTION_TEXT = Ac.c.a("NO_INTERNET_CONNECTION_TEXT");
        public static final Ac.b NO_INTERNET_CONNECTION_VIP_TEXT = Ac.c.a("NO_INTERNET_CONNECTION_VIP_TEXT");
        public static final Ac.b SHOW_HOW_TO_BE_PRO = Ac.c.a("SHOW_HOW_TO_BE_PRO");
        public static final Ac.b USER_TERMS_INFORM_BIRTHDAY = Ac.c.a("USER_TERMS_INFORM_BIRTHDAY");
        public static final Ac.b USER_TERMS_CONSENT_TITLE = Ac.c.a("USER_TERMS_CONSENT_TITLE");
        public static final Ac.b USER_TERMS_CONSENT_TEXT = Ac.c.a("USER_TERMS_CONSENT_TEXT");
        public static final Ac.b USER_TERMS_CONSENT_PRIVACY_POLICY_TEXT = Ac.c.a("USER_TERMS_CONSENT_PRIVACY_POLICY_TEXT");
        public static final Ac.b USER_TERMS_CONSENT_TERMS_AND_CONDITIONS_TEXT = Ac.c.a("USER_TERMS_CONSENT_TERMS_AND_CONDITIONS_TEXT");
        public static final Ac.b USER_ADS_CONSENT_TITLE = Ac.c.a("USER_ADS_CONSENT_TITLE");
        public static final Ac.b USER_ADS_CONSENT_TEXT = Ac.c.a("USER_ADS_CONSENT_TEXT");
        public static final Ac.b USER_ADS_CONSENT_DONT_SELL = Ac.c.a("USER_ADS_CONSENT_DONT_SELL");
        public static final Ac.b USER_ADS_CONSENT_AGREE = Ac.c.a("USER_ADS_CONSENT_AGREE");
        public static final Ac.b USER_ADS_CONSENT_DISAGREE = Ac.c.a("USER_ADS_CONSENT_DISAGREE");
        public static final Ac.b PROJECTS_PANEL_TITTLE = Ac.c.a("PROJECTS_PANEL_TITTLE");
        public static final Ac.b PROJECTS_PANEL_SUB_TITTLE = Ac.c.a("PROJECTS_PANEL_SUB_TITTLE");
        public static final Ac.b PROJECTS_PANEL_NEW_PROJECT = Ac.c.a("PROJECTS_PANEL_NEW_PROJECT");
        public static final Ac.b PROJECTS_MENU_OPEN = Ac.c.a("PROJECTS_MENU_OPEN");
        public static final Ac.b PROJECTS_MENU_SAVE_BACKUP = Ac.c.a("PROJECTS_MENU_SAVE_BACKUP");
        public static final Ac.b PROJECTS_MENU_EXPORT_BACKUP = Ac.c.a("PROJECTS_MENU_EXPORT_BACKUP");
        public static final Ac.b PROJECTS_MENU_DELETE = Ac.c.a("PROJECTS_MENU_DELETE");
        public static final Ac.b GITHUB = Ac.c.a("GITHUB");
        public static final Ac.b NEW_PROJECT_PANEL_TITTLE = Ac.c.a("NEW_PROJECT_PANEL_TITTLE");
        public static final Ac.b TEMPLATE_VIEWER_NAME_PROJECT_TEXT = Ac.c.a("TEMPLATE_VIEWER_NAME_PROJECT_TEXT");
        public static final Ac.b TEMPLATE_VIEWER_PROJECT_NAME = Ac.c.a("TEMPLATE_VIEWER_PROJECT_NAME");
        public static final Ac.b GRAPHICS_SELECTOR_PANEL_TITTLE = Ac.c.a("GRAPHICS_SELECTOR_PANEL_TITTLE");
        public static final Ac.b GRAPHICS_SELECTOR_PANEL_TITTLE_CHANGE_LATER = Ac.c.a("GRAPHICS_SELECTOR_PANEL_TITTLE_CHANGE_LATER");
        public static final Ac.b GRAPHICS_SELECTOR_PANEL_TEXT_CHANGE_LATER = Ac.c.a("GRAPHICS_SELECTOR_PANEL_TEXT_CHANGE_LATER");
        public static final Ac.b GRAPHICS_SELECTOR_PANEL_LITE = Ac.c.a("GRAPHICS_SELECTOR_PANEL_LITE");
        public static final Ac.b GRAPHICS_SELECTOR_PANEL_SIMPLE_FAST = Ac.c.a("GRAPHICS_SELECTOR_PANEL_SIMPLE_FAST");
        public static final Ac.b GRAPHICS_SELECTOR_PANEL_ADVANCED = Ac.c.a("GRAPHICS_SELECTOR_PANEL_ADVANCED");
        public static final Ac.b GRAPHICS_SELECTOR_PANEL_AMAZING_SLOW = Ac.c.a("GRAPHICS_SELECTOR_PANEL_AMAZING_SLOW");
        public static final Ac.b OLD_VERSION_BLOCK_PANEL_TITTLE = Ac.c.a("OLD_VERSION_BLOCK_PANEL_TITTLE");
        public static final Ac.b OLD_VERSION_BLOCK_PANEL_DESC = Ac.c.a("OLD_VERSION_BLOCK_PANEL_DESC");
        public static final Ac.b OLD_VERSION_WARNING_PANEL_TITTLE = Ac.c.a("OLD_VERSION_WARNING_PANEL_TITTLE");
        public static final Ac.b OLD_VERSION_WARNING_PANEL_DESC = Ac.c.a("OLD_VERSION_WARNING_PANEL_DESC");
        public static final Ac.b FREE = Ac.c.a("FREE");
        public static final Ac.b BUILDS_ERROR_APK_UNDER_CONSTRUCTION = Ac.c.a("BUILDS_ERROR_APK_UNDER_CONSTRUCTION");
        public static final Ac.b BUILDS_CREATE_BUILD = Ac.c.a("BUILDS_CREATE_BUILD");
        public static final Ac.b BUILDS_DESCRIPTION = Ac.c.a("BUILDS_DESCRIPTION");
        public static final Ac.b BUILDS_PANEL_EXPORT_WIZARD = Ac.c.a("BUILDS_PANEL_EXPORT_WIZARD");
        public static final Ac.b BUILDS_PANEL_ADVANCED_EXPORTATION = Ac.c.a("BUILDS_PANEL_ADVANCED_EXPORTATION");
        public static final Ac.b BUILDS_PANEL_EXPORT_TO_PLAYSTORE = Ac.c.a("BUILDS_PANEL_EXPORT_TO_PLAYSTORE");
        public static final Ac.b FILL_BIRTHDAY_WARNING = Ac.c.a("FILL_BIRTHDAY_WARNING");
        public static final Ac.b ASSISTANCE_EXPORT_TITTLE = Ac.c.a("ASSISTANCE_EXPORT_TITTLE");
        public static final Ac.b ASSISTANCE_EXPORT_STAGE = Ac.c.a("ASSISTANCE_EXPORT_STAGE");
        public static final Ac.b ASSISTANCE_EXPORT_NEXT = Ac.c.a("ASSISTANCE_EXPORT_NEXT");
        public static final Ac.b ASSISTANCE_EXPORT_BACK = Ac.c.a("ASSISTANCE_EXPORT_BACK");
        public static final Ac.b ASSISTANCE_EXPORT_STAGE1_APP_NAME_TITTLE = Ac.c.a("ASSISTANCE_EXPORT_STAGE1_APP_NAME_TITTLE");
        public static final Ac.b ASSISTANCE_EXPORT_STAGE1_APP_NAME_HINT = Ac.c.a("ASSISTANCE_EXPORT_STAGE1_APP_NAME_HINT");
        public static final Ac.b ASSISTANCE_EXPORT_STAGE1_COMPANY_NAME_TITTLE = Ac.c.a("ASSISTANCE_EXPORT_STAGE1_COMPANY_NAME_TITTLE");
        public static final Ac.b ASSISTANCE_EXPORT_STAGE2_TITTLE = Ac.c.a("ASSISTANCE_EXPORT_STAGE2_TITTLE");
        public static final Ac.b ASSISTANCE_EXPORT_STAGE2_TEXT = Ac.c.a("ASSISTANCE_EXPORT_STAGE2_TEXT");
        public static final Ac.b ASSISTANCE_EXPORT_STAGE2_SELECT_WORLD = Ac.c.a("ASSISTANCE_EXPORT_STAGE2_SELECT_WORLD");
        public static final Ac.b ASSISTANCE_EXPORT_SELECT_WORLD_REQUIRED = Ac.c.a("ASSISTANCE_EXPORT_SELECT_WORLD_REQUIRED");
        public static final Ac.b ASSISTANCE_EXPORT_STAGE3_TITTLE = Ac.c.a("ASSISTANCE_EXPORT_STAGE3_TITTLE");
        public static final Ac.b ASSISTANCE_EXPORT_STAGE3_TEXT = Ac.c.a("ASSISTANCE_EXPORT_STAGE3_TEXT");
        public static final Ac.b ASSISTANCE_EXPORT_STAGE_PACKAGE_ID_TITTLE = Ac.c.a("ASSISTANCE_EXPORT_STAGE_PACKAGE_ID_TITTLE");
        public static final Ac.b ASSISTANCE_EXPORT_STAGE_PACKAGE_ID_TEXT = Ac.c.a("ASSISTANCE_EXPORT_STAGE_PACKAGE_ID_TEXT");
        public static final Ac.b ASSISTANCE_EXPORT_STAGE_PACKAGE_ID_LABEL = Ac.c.a("ASSISTANCE_EXPORT_STAGE_PACKAGE_ID_LABEL");
        public static final Ac.b ASSISTANCE_EXPORT_STAGE_PACKAGE_ID_HINT = Ac.c.a("ASSISTANCE_EXPORT_STAGE_PACKAGE_ID_HINT");
        public static final Ac.b ASSISTANCE_EXPORT_STAGE_ADVANCED_TITTLE = Ac.c.a("ASSISTANCE_EXPORT_STAGE_ADVANCED_TITTLE");
        public static final Ac.b ASSISTANCE_EXPORT_STAGE_ADVANCED_TEXT = Ac.c.a("ASSISTANCE_EXPORT_STAGE_ADVANCED_TEXT");
        public static final Ac.b ASSISTANCE_EXPORT_STAGE_ADVANCED_VULKAN_SHADER_PRECACHE = Ac.c.a("ASSISTANCE_EXPORT_STAGE_ADVANCED_VULKAN_SHADER_PRECACHE");
        public static final Ac.b ASSISTANCE_EXPORT_STAGE4_TITTLE = Ac.c.a("ASSISTANCE_EXPORT_STAGE4_TITTLE");
        public static final Ac.b ASSISTANCE_EXPORT_STAGE4_EXPORT = Ac.c.a("ASSISTANCE_EXPORT_STAGE4_EXPORT");
        public static final Ac.b ASSISTANCE_EXPORT_VALIDATION_LAUNCHER_NAME = Ac.c.a("ASSISTANCE_EXPORT_VALIDATION_LAUNCHER_NAME");
        public static final Ac.b ASSISTANCE_EXPORT_VALIDATION_PACKAGE_ID = Ac.c.a("ASSISTANCE_EXPORT_VALIDATION_PACKAGE_ID");
        public static final Ac.b ASSISTANCE_EXPORT_VALIDATION_INVALID_FIELD = Ac.c.a("ASSISTANCE_EXPORT_VALIDATION_INVALID_FIELD");
        public static final Ac.b ASSISTANCE_EXPORT_VALIDATION_FIRST_LETTER = Ac.c.a("ASSISTANCE_EXPORT_VALIDATION_FIRST_LETTER");
        public static final Ac.b ASSISTANCE_EXPORT_VALIDATION_MAX_CHARACTERS = Ac.c.a("ASSISTANCE_EXPORT_VALIDATION_MAX_CHARACTERS");
        public static final Ac.b ASSISTANCE_EXPORT_VALIDATION_ONLY_NUMBERS_AND_LETTERS = Ac.c.a("ASSISTANCE_EXPORT_VALIDATION_ONLY_NUMBERS_AND_LETTERS");
        public static final Ac.b ASSISTANCE_EXPORT_VALIDATION_ONLY_NUMBERS_LETTERS_AND_SPACES = Ac.c.a("ASSISTANCE_EXPORT_VALIDATION_ONLY_NUMBERS_LETTERS_AND_SPACES");
        public static final Ac.b ASSISTANCE_EXPORT_VALIDATION_APP_ID_TWO_SEGMENTS = Ac.c.a("ASSISTANCE_EXPORT_VALIDATION_APP_ID_TWO_SEGMENTS");
        public static final Ac.b ASSISTANCE_EXPORT_VALIDATION_APP_ID_EMPTY_SEGMENTS = Ac.c.a("ASSISTANCE_EXPORT_VALIDATION_APP_ID_EMPTY_SEGMENTS");
        public static final Ac.b ASSISTANCE_EXPORT_VALIDATION_APP_ID_SEGMENT_START = Ac.c.a("ASSISTANCE_EXPORT_VALIDATION_APP_ID_SEGMENT_START");
        public static final Ac.b ASSISTANCE_EXPORT_VALIDATION_APP_ID_ALLOWED_CHARS = Ac.c.a("ASSISTANCE_EXPORT_VALIDATION_APP_ID_ALLOWED_CHARS");
        public static final Ac.b EXPORT_ADVANCED_TITTLE = Ac.c.a("EXPORT_ADVANCED_TITTLE");
        public static final Ac.b EXPORT_ADVANCED_ICON_TITTLE = Ac.c.a("EXPORT_ADVANCED_ICON_TITTLE");
        public static final Ac.b EXPORT_ADVANCED_LAUNCHER_TITTLE = Ac.c.a("EXPORT_ADVANCED_LAUNCHER_TITTLE");
        public static final Ac.b EXPORT_ADVANCED_COMPANY_TITTLE = Ac.c.a("EXPORT_ADVANCED_COMPANY_TITTLE");
        public static final Ac.b EXPORT_ADVANCED_APP_TITTLE = Ac.c.a("EXPORT_ADVANCED_APP_TITTLE");
        public static final Ac.b EXPORT_ADVANCED_VERSION_TITTLE = Ac.c.a("EXPORT_ADVANCED_VERSION_TITTLE");
        public static final Ac.b EXPORT_ADVANCED_VERSION_CODE_TITTLE = Ac.c.a("EXPORT_ADVANCED_VERSION_CODE_TITTLE");
        public static final Ac.b EXPORT_ADVANCED_VERSION_NAME_TITTLE = Ac.c.a("EXPORT_ADVANCED_VERSION_NAME_TITTLE");
        public static final Ac.b EXPORT_ADVANCED_FORMAT_TITTLE = Ac.c.a("EXPORT_ADVANCED_FORMAT_TITTLE");
        public static final Ac.b EXPORT_ADVANCED_ORIENTATION_TITTLE = Ac.c.a("EXPORT_ADVANCED_ORIENTATION_TITTLE");
        public static final Ac.b EXPORT_ADVANCED_EXPORT_BUTTON = Ac.c.a("EXPORT_ADVANCED_EXPORT_BUTTON");
        public static final Ac.b FOLLOW_SIGN_UP_RECEIVE = Ac.c.a("FOLLOW_SIGN_UP_RECEIVE");
        public static final Ac.b FOLLOW_PROFILE_RECEIVE = Ac.c.a("FOLLOW_PROFILE_RECEIVE");
        public static final Ac.b JOIN_COMMUNITY_RECEIVE = Ac.c.a("JOIN_COMMUNITY_RECEIVE");
        public static final Ac.b FOLLOW_SIGN_UP = Ac.c.a("FOLLOW_SIGN_UP");
        public static final Ac.b FOLLOW = Ac.c.a("FOLLOW");
        public static final Ac.b ENTER = Ac.c.a("ENTER");
        public static final Ac.b CLAIMED = Ac.c.a("CLAIMED");
        public static final Ac.b EARN_COINS = Ac.c.a("EARN_COINS");
        public static final Ac.b USED_APP_FOR_1_HOUR = Ac.c.a("USED_APP_FOR_1_HOUR");
        public static final Ac.b DAILY_REWARDS_TITTLE = Ac.c.a("DAILY_REWARDS_TITTLE");
        public static final Ac.b DAILY_REWARDS_LOGIN_DAYS = Ac.c.a("DAILY_REWARDS_LOGIN_DAYS");
        public static final Ac.b DAILY_REWARDS_EXTRA_VIP = Ac.c.a("DAILY_REWARDS_EXTRA_VIP");
        public static final Ac.b DAY_TEXT = Ac.c.a("DAY_TEXT");
        public static final Ac.b DAILY_REWARDS_EARN = Ac.c.a("DAILY_REWARDS_EARN");
        public static final Ac.b DAILY_REWARDS_MORE_COINS = Ac.c.a("DAILY_REWARDS_MORE_COINS");
        public static final Ac.b DAILY_REWARDS_RECEIVED_VIP_NOTIFICATION = Ac.c.a("DAILY_REWARDS_RECEIVED_VIP_NOTIFICATION");
        public static final Ac.b DAILY_REWARDS_LOGGED_DAYS_NOTIFICATION = Ac.c.a("DAILY_REWARDS_LOGGED_DAYS_NOTIFICATION");
        public static final Ac.b DAILY_REWARDS_LOGGED_DAYS_AND_EARNED_NOTIFICATION = Ac.c.a("DAILY_REWARDS_LOGGED_DAYS_AND_EARNED_NOTIFICATION");
        public static final Ac.b NOT_NOW = Ac.c.a("NOT_NOW");
        public static final Ac.b SHOPPING_PANEL_PURCHASE_COINS = Ac.c.a("SHOPPING_PANEL_PURCHASE_COINS");
        public static final Ac.b SHOPPING_PANEL_PURCHASE_FUNDS = Ac.c.a("SHOPPING_PANEL_PURCHASE_FUNDS");
        public static final Ac.b SHOPPING_PANEL_EARN_COINS = Ac.c.a("SHOPPING_PANEL_EARN_COINS");
        public static final Ac.b SHOPPING_PANEL_VIP_SIGNATURE = Ac.c.a("SHOPPING_PANEL_VIP_SIGNATURE");
        public static final Ac.b SHOPPING_PANEL_FIRST_PURCHASE = Ac.c.a("SHOPPING_PANEL_FIRST_PURCHASE");
        public static final Ac.b SHOPPING_PANEL_50_PERCENT_OFF = Ac.c.a("SHOPPING_PANEL_50_PERCENT_OFF");
        public static final Ac.b REMOVE_ADS_PANEL_TITTLE = Ac.c.a("REMOVE_ADS_PANEL_TITTLE");
        public static final Ac.b REMOVE_ADS_PANEL_TEXT = Ac.c.a("REMOVE_ADS_PANEL_TEXT");
        public static final Ac.b REMOVE_ADS_PANEL_PURCHASED_REMOVAL = Ac.c.a("REMOVE_ADS_PANEL_PURCHASED_REMOVAL");
        public static final Ac.b SHOPPING_PANEL_WINNING_AD = Ac.c.a("SHOPPING_PANEL_WINNING_AD");
        public static final Ac.b SHOPPING_PANEL_SEE_AD_RECEIVE = Ac.c.a("SHOPPING_PANEL_SEE_AD_RECEIVE");
        public static final Ac.b WATCH = Ac.c.a("WATCH");
        public static final Ac.b WATCH_ADS = Ac.c.a("WATCH_ADS");
        public static final Ac.b FOLLOW_SOCIAL_NETWORKS = Ac.c.a("FOLLOW_SOCIAL_NETWORKS");
        public static final Ac.b TIRED_OF_THE_ADS = Ac.c.a("TIRED_OF_THE_ADS");
        public static final Ac.b REMOVE_ALL_ADS_TEXT_NOTIFICATION = Ac.c.a("REMOVE_ALL_ADS_TEXT_NOTIFICATION");
        public static final Ac.b LEARN_MORE = Ac.c.a("LEARN_MORE");
        public static final Ac.b AD_BLOCKING_DETECTED_TEXT = Ac.c.a("AD_BLOCKING_DETECTED_TEXT");
        public static final Ac.b AD_BLOCKING_VIP_TEXT = Ac.c.a("AD_BLOCKING_VIP_TEXT");
        public static final Ac.b AD_BLOCK_CLOSE_TEXT = Ac.c.a("AD_BLOCK_CLOSE_TEXT");
        public static final Ac.b REMOVER_ADS_BUTTON = Ac.c.a("REMOVER_ADS_BUTTON");
        public static final Ac.b NON_CONNECTION_TITTLE = Ac.c.a("NON_CONNECTION_TITTLE");
        public static final Ac.b NON_CONNECTION_VIP_TEXT = Ac.c.a("NON_CONNECTION_VIP_TEXT");
        public static final Ac.b NON_CONNECTION_CLOSE_TEXT = Ac.c.a("NON_CONNECTION_CLOSE_TEXT");
        public static final Ac.b ATTENTION = Ac.c.a("ATTENTION");
        public static final Ac.b EXIT = Ac.c.a("EXIT");
        public static final Ac.b CLOSE = Ac.c.a("CLOSE");
        public static final Ac.b CLOSE_PANEL = Ac.c.a("CLOSE_PANEL");
        public static final Ac.b ARE_YOU_SURE_CANCEL_THE_IMPORT = Ac.c.a("ARE_YOU_SURE_CANCEL_THE_IMPORT");
        public static final Ac.b IF_THE_PROJECT_EXISTS_WILL_BE_OVERRIDE = Ac.c.a("IF_THE_PROJECT_EXISTS_WILL_BE_OVERRIDE");
        public static final Ac.b RESTORE_THIS_BACKUP = Ac.c.a("RESTORE_THIS_BACKUP");
        public static final Ac.b DELETE = Ac.c.a("DELETE");
        public static final Ac.b DELETE_TAG = Ac.c.a("DELETE_TAG");
        public static final Ac.b DELETE_LAYER = Ac.c.a("DELETE_LAYER");
        public static final Ac.b REINSTALL_ALL_JAVA_LIBRARIES = Ac.c.a("REINSTALL_ALL_JAVA_LIBRARIES");
        public static final Ac.b ARE_YOU_SURE_DELETE = Ac.c.a("ARE_YOU_SURE_DELETE");
        public static final Ac.b DELETE_ALL_CHILD_OBJECTS = Ac.c.a("DELETE_ALL_CHILD_OBJECTS");
        public static final Ac.b OPTIONS = Ac.c.a("OPTIONS");
        public static final Ac.b MODELS_AND_OBJECTS = Ac.c.a("MODELS_AND_OBJECTS");
        public static final Ac.b DAE_VERTEX_SCALE_TO_ARMATURE_MATCH = Ac.c.a("DAE_VERTEX_SCALE_TO_ARMATURE_MATCH");
        public static final Ac.b ANIMATIONS = Ac.c.a("ANIMATIONS");
        public static final Ac.b IMPORT_POSITIONS = Ac.c.a("IMPORT_POSITIONS");
        public static final Ac.b IMPORT_ROTATIONS = Ac.c.a("IMPORT_ROTATIONS");
        public static final Ac.b IMPORT_SCALE = Ac.c.a("IMPORT_SCALE");
        public static final Ac.b PROJECTS = Ac.c.a("PROJECTS");
        public static final Ac.b YOU_HAVE_PENDING_PURCHASE_TO_RECEIVE = Ac.c.a("YOU_HAVE_PENDING_PURCHASE_TO_RECEIVE");
        public static final Ac.b LOGIN_TO_RECEIVE = Ac.c.a("LOGIN_TO_RECEIVE");
        public static final Ac.b YOU_MADE_PURCHASE_LOGIN_TO_RECEIVE = Ac.c.a("YOU_MADE_PURCHASE_LOGIN_TO_RECEIVE");
        public static final Ac.b COPY = Ac.c.a("COPY");
        public static final Ac.b COPY_PARENT = Ac.c.a("COPY_PARENT");
        public static final Ac.b COPY_CHILD = Ac.c.a("COPY_CHILD");
        public static final Ac.b MOVE = Ac.c.a("MOVE");
        public static final Ac.b MOVE_PARENT = Ac.c.a("MOVE_PARENT");
        public static final Ac.b MOVE_CHILD = Ac.c.a("MOVE_CHILD");
        public static final Ac.b REPORT_PACKAGE_TITTLE = Ac.c.a("REPORT_PACKAGE_TITTLE");
        public static final Ac.b WARNING_PACKAGE_CONTENT = Ac.c.a("WARNING_PACKAGE_CONTENT");
        public static final Ac.b HOW_ABOUT_EARNING_COINS = Ac.c.a("HOW_ABOUT_EARNING_COINS");
        public static final Ac.b WATCH_ADS_AND_EARN_COINS = Ac.c.a("WATCH_ADS_AND_EARN_COINS");
        public static final Ac.b RESTORE = Ac.c.a("RESTORE");
        public static final Ac.b SAVE_PROJECT = Ac.c.a("SAVE_PROJECT");
        public static final Ac.b OPEN_PROJECT = Ac.c.a("OPEN_PROJECT");
        public static final Ac.b BACKUP = Ac.c.a("BACKUP");
        public static final Ac.b CREATE_NEW_BACKUP = Ac.c.a("CREATE_NEW_BACKUP");
        public static final Ac.b WORLD_SETTINGS = Ac.c.a("WORLD_SETTINGS");
        public static final Ac.b LIGHT_SETTINGS = Ac.c.a("LIGHT_SETTINGS");
        public static final Ac.b SKYBOX_SETTINGS = Ac.c.a("SKYBOX_SETTINGS");
        public static final Ac.b FOG_SETTINGS = Ac.c.a("FOG_SETTINGS");
        public static final Ac.b PHYSICS_SETTINGS = Ac.c.a("PHYSICS_SETTINGS");
        public static final Ac.b NAVMESH_SETTINGS = Ac.c.a("NAVMESH_SETTINGS");
        public static final Ac.b TOOLS = Ac.c.a("TOOLS");
        public static final Ac.b BAKE_GENERATOR = Ac.c.a("BAKE_GENERATOR");
        public static final Ac.b PROJECT_SETTINGS = Ac.c.a("PROJECT_SETTINGS");
        public static final Ac.b GRAPHICS_SETTINGS = Ac.c.a("GRAPHICS_SETTINGS");
        public static final Ac.b JAVA_SETTINGS = Ac.c.a("JAVA_SETTINGS");
        public static final Ac.b EDITOR_SETTINGS = Ac.c.a("EDITOR_SETTINGS");
        public static final Ac.b SETTINGS = Ac.c.a("SETTINGS");
        public static final Ac.b EXPORT_PROJECT = Ac.c.a("EXPORT_PROJECT");
        public static final Ac.b APP_DOCUMENTATION = Ac.c.a("APP_DOCUMENTATION");
        public static final Ac.b LEGAL_INFORMATION = Ac.c.a("LEGAL_INFORMATION");
        public static final Ac.b DATE_RIGHT_NOW = Ac.c.a("DATE_RIGHT_NOW");
        public static final Ac.b DATE_YESTERDAY = Ac.c.a("DATE_YESTERDAY");
        public static final Ac.b DATE_LAST_WEEK = Ac.c.a("DATE_LAST_WEEK");
        public static final Ac.b DATE_LAST_MONTH = Ac.c.a("DATE_LAST_MONTH");
        public static final Ac.b DATE_LAST_YEAR = Ac.c.a("DATE_LAST_YEAR");
        public static final Ac.b DATE_YEAR = Ac.c.a("DATE_YEAR");
        public static final Ac.b DATE_MINUTE = Ac.c.a("DATE_MINUTE");
        public static final Ac.b DATE_HOUR = Ac.c.a("DATE_HOUR");
        public static final Ac.b DATE_DAY = Ac.c.a("DATE_DAY");
        public static final Ac.b DATE_WEEK = Ac.c.a("DATE_WEEK");
        public static final Ac.b DATE_MONTH = Ac.c.a("DATE_MONTH");
        public static final Ac.b GAME_JAM_TITTLE = Ac.c.a("GAME_JAM_TITTLE");
        public static final Ac.b GAME_JAM_ONE_PLACE = Ac.c.a("GAME_JAM_ONE_PLACE");
        public static final Ac.b GAME_JAM_SECOND_PLACE = Ac.c.a("GAME_JAM_SECOND_PLACE");
        public static final Ac.b GAME_JAM_THIRD_PLACE = Ac.c.a("GAME_JAM_THIRD_PLACE");
        public static final Ac.b GAME_JAM_FOURTH_PLACE = Ac.c.a("GAME_JAM_FOURTH_PLACE");
        public static final Ac.b GAME_JAM_WARNING = Ac.c.a("GAME_JAM_WARNING");
        public static final Ac.b GAME_JAM_RULES = Ac.c.a("GAME_JAM_RULES");
        public static final Ac.b GAME_JAM_REGISTER = Ac.c.a("GAME_JAM_REGISTER");
        public static final Ac.b GAME_JAM_NOTIFICATION_TITTLE = Ac.c.a("GAME_JAM_NOTIFICATION_TITTLE");
        public static final Ac.b GAME_JAM_NOTIFICATION_DESC = Ac.c.a("GAME_JAM_NOTIFICATION_DESC");
        public static final Ac.b GAME_JAM_NOTIFICATION_BUTTON = Ac.c.a("GAME_JAM_NOTIFICATION_BUTTON");
        public static final Ac.b GAME_JAM_JOIN = Ac.c.a("GAME_JAM_JOIN");
        public static final Ac.b ABOUT_PANEL_VERSION = Ac.c.a("ABOUT_PANEL_VERSION");
        public static final Ac.b ABOUT_PANEL_LAUNCHED = Ac.c.a("ABOUT_PANEL_LAUNCHED");
        public static final Ac.b ABOUT_PANEL_UPDATED = Ac.c.a("ABOUT_PANEL_UPDATED");
        public static final Ac.b ABOUT_PANEL_SIZE = Ac.c.a("ABOUT_PANEL_SIZE");
        public static final Ac.b ABOUT_PANEL_POWERED = Ac.c.a("ABOUT_PANEL_POWERED");
        public static final Ac.b OBJECT_UTILS_CREATE_CHILD_OBJECT = Ac.c.a("OBJECT_UTILS_CREATE_CHILD_OBJECT");
        public static final Ac.b OBJECT_UTILS_CHANGE_PARENT = Ac.c.a("OBJECT_UTILS_CHANGE_PARENT");
        public static final Ac.b OBJECT_UTILS_MOVE_UP = Ac.c.a("OBJECT_UTILS_MOVE_UP");
        public static final Ac.b OBJECT_UTILS_MOVE_DOWN = Ac.c.a("OBJECT_UTILS_MOVE_DOWN");
        public static final Ac.b OBJECT_UTILS_EXPORT_CURRENT_FOLDER = Ac.c.a("OBJECT_UTILS_EXPORT_CURRENT_FOLDER");
        public static final Ac.b OBJECT_UTILS_ADD_CHILD_BONE = Ac.c.a("OBJECT_UTILS_ADD_CHILD_BONE");
        public static final Ac.b OBJECT_UTILS_ADD_SKELETON = Ac.c.a("OBJECT_UTILS_ADD_SKELETON");
        public static final Ac.b OBJECT_UTILS_RANDOMIZE_CHILD_ROTATION_Y = Ac.c.a("OBJECT_UTILS_RANDOMIZE_CHILD_ROTATION_Y");
        public static final Ac.b OBJECT_UTILS_DELETE_ALL_CHILDREN = Ac.c.a("OBJECT_UTILS_DELETE_ALL_CHILDREN");
        public static final Ac.b OBJECT_UTILS_DETACH_CHILDREN = Ac.c.a("OBJECT_UTILS_DETACH_CHILDREN");
        public static final Ac.b OBJECT_UTILS_COLLAPSE_CHILDREN_COMPONENTS = Ac.c.a("OBJECT_UTILS_COLLAPSE_CHILDREN_COMPONENTS");
        public static final Ac.b OBJECT_UTILS_BATCH = Ac.c.a("OBJECT_UTILS_BATCH");
        public static final Ac.b OBJECT_UTILS_SET_ALL_STATIC = Ac.c.a("OBJECT_UTILS_SET_ALL_STATIC");
        public static final Ac.b OBJECT_UTILS_SET_ALL_DYNAMIC = Ac.c.a("OBJECT_UTILS_SET_ALL_DYNAMIC");
        public static final Ac.b OBJECT_UTILS_CHANGE_ALL_SHADERS = Ac.c.a("OBJECT_UTILS_CHANGE_ALL_SHADERS");
        public static final Ac.b OBJECT_UTILS_CHANGE_ALL_MATERIALS = Ac.c.a("OBJECT_UTILS_CHANGE_ALL_MATERIALS");
        public static final Ac.b UTILS = Ac.c.a("UTILS");
        public static final Ac.b DUPLICATE = Ac.c.a("DUPLICATE");
        public static final Ac.b CREATE_OBJECT_3D_OBJECTS = Ac.c.a("CREATE_OBJECT_3D_OBJECTS");
        public static final Ac.b CREATE_OBJECT_2D_OBJECTS = Ac.c.a("CREATE_OBJECT_2D_OBJECTS");
        public static final Ac.b CREATE_OBJECT_COMPLEX_OBJECTS = Ac.c.a("CREATE_OBJECT_COMPLEX_OBJECTS");
        public static final Ac.b CREATE_OBJECT_PARTICLES = Ac.c.a("CREATE_OBJECT_PARTICLES");
        public static final Ac.b CREATE_OBJECT_LIGHT = Ac.c.a("CREATE_OBJECT_LIGHT");
        public static final Ac.b CREATE_OBJECT_SOUND = Ac.c.a("CREATE_OBJECT_SOUND");
        public static final Ac.b EMPTY = Ac.c.a("EMPTY");
        public static final Ac.b EMPTY_AS_CHILD = Ac.c.a("EMPTY_AS_CHILD");
        public static final Ac.b COPY_TO_WORLD = Ac.c.a("COPY_TO_WORLD");
        public static final Ac.b INSTALL_PLUGIN = Ac.c.a("INSTALL_PLUGIN");
        public static final Ac.b EXTRACT_VERTEX = Ac.c.a("EXTRACT_VERTEX");
        public static final Ac.b EXTRACT_AND_COPY_WORLD = Ac.c.a("EXTRACT_AND_COPY_WORLD");
        public static final Ac.b REIMPORT = Ac.c.a("REIMPORT");
        public static final Ac.b CLEAR_IMPORTED_DATA = Ac.c.a("CLEAR_IMPORTED_DATA");
        public static final Ac.b EXTRACT_HERE = Ac.c.a("EXTRACT_HERE");
        public static final Ac.b EXTRACT_TO_FOLDER = Ac.c.a("EXTRACT_TO_FOLDER");
        public static final Ac.b ATTACH_MODEL_RENDERER = Ac.c.a("ATTACH_MODEL_RENDERER");
        public static final Ac.b ATTACH_SUI_IMAGE = Ac.c.a("ATTACH_SUI_IMAGE");
        public static final Ac.b ATTACH_SUI_BUTTON_ON_NORMAL = Ac.c.a("ATTACH_SUI_BUTTON_ON_NORMAL");
        public static final Ac.b ATTACH_SUI_BUTTON_ON_PRESSED = Ac.c.a("ATTACH_SUI_BUTTON_ON_PRESSED");
        public static final Ac.b ATTACH_SELECTED = Ac.c.a("ATTACH_SELECTED");
        public static final Ac.b ATTACH_SKINNED_MODEL_RENDERER = Ac.c.a("ATTACH_SKINNED_MODEL_RENDERER");
        public static final Ac.b INVERT_NORMALS = Ac.c.a("INVERT_NORMALS");
        public static final Ac.b RE_PIVOT = Ac.c.a("RE_PIVOT");
        public static final Ac.b NEW = Ac.c.a("NEW");
        public static final Ac.b FOLDER = Ac.c.a("FOLDER");
        public static final Ac.b OTHERS = Ac.c.a("OTHERS");
        public static final Ac.b REFACTOR = Ac.c.a("REFACTOR");
        public static final Ac.b BATCH = Ac.c.a("BATCH");
        public static final Ac.b EXTRACT_ALL_OBJ_FILES = Ac.c.a("EXTRACT_ALL_OBJ_FILES");
        public static final Ac.b EXTRACT_ALL_DAE_FILES = Ac.c.a("EXTRACT_ALL_DAE_FILES");
        public static final Ac.b EXPORT = Ac.c.a("EXPORT");
        public static final Ac.b CREATE_IT_JAR = Ac.c.a("CREATE_IT_JAR");
        public static final Ac.b IMPORT_FILES = Ac.c.a("IMPORT_FILES");
        public static final Ac.b WORLD = Ac.c.a("WORLD");
        public static final Ac.b ANIMATION = Ac.c.a("ANIMATION");
        public static final Ac.b TEXTURE = Ac.c.a("TEXTURE");
        public static final Ac.b CAMERA_FILTER = Ac.c.a("CAMERA_FILTER");
        public static final Ac.b TERRAIN_DATA = Ac.c.a("TERRAIN_DATA");
        public static final Ac.b HPOP_DATA = Ac.c.a("HPOP_DATA");
        public static final Ac.b ADD_PANEL = Ac.c.a("ADD_PANEL");
        public static final Ac.b TURN_TO_FLOATING = Ac.c.a("TURN_TO_FLOATING");
        public static final Ac.b COPY_TO_FLOATING = Ac.c.a("COPY_TO_FLOATING");
        public static final Ac.b TERRAIN_RAISE = Ac.c.a("TERRAIN_RAISE");
        public static final Ac.b TERRAIN_SMOOTH = Ac.c.a("TERRAIN_SMOOTH");
        public static final Ac.b TERRAIN_LEVEL = Ac.c.a("TERRAIN_LEVEL");
        public static final Ac.b TERRAIN_PAINT = Ac.c.a("TERRAIN_PAINT");
        public static final Ac.b SIZE = Ac.c.a("SIZE");
        public static final Ac.b SIZE_IN_PIXELS = Ac.c.a("SIZE_IN_PIXELS");
        public static final Ac.b INTENSITY = Ac.c.a("INTENSITY");
        public static final Ac.b HEIGHT = Ac.c.a("HEIGHT");
        public static final Ac.b OBJECT_MODE = Ac.c.a("OBJECT_MODE");
        public static final Ac.b AXES_NOW_USE_OBJECT_CENTER = Ac.c.a("AXES_NOW_USE_OBJECT_CENTER");
        public static final Ac.b AXES_NOW_USE_OBJECT_PIVOT = Ac.c.a("AXES_NOW_USE_OBJECT_PIVOT");
        public static final Ac.b AXIS_ORIENTATION_CHANGED_TO_GLOBAL = Ac.c.a("AXIS_ORIENTATION_CHANGED_TO_GLOBAL");
        public static final Ac.b AXIS_ORIENTATION_CHANGED_TO_LOCAL = Ac.c.a("AXIS_ORIENTATION_CHANGED_TO_LOCAL");
        public static final Ac.b MOVE_OBJECT_TO_CURSOR = Ac.c.a("MOVE_OBJECT_TO_CURSOR");
        public static final Ac.b MOVE_CURSOR_TO_OBJECT = Ac.c.a("MOVE_CURSOR_TO_OBJECT");
        public static final Ac.b FOCUS_ON_CURSOR = Ac.c.a("FOCUS_ON_CURSOR");
        public static final Ac.b UV_PAINT = Ac.c.a("UV_PAINT");
        public static final Ac.b PAINTING_AND_UV_GENERATION_TEXT_VIP_ONLY = Ac.c.a("PAINTING_AND_UV_GENERATION_TEXT_VIP_ONLY");
        public static final Ac.b VIP_ONLY = Ac.c.a("VIP_ONLY");
        public static final Ac.b DRAW_MODE = Ac.c.a("DRAW_MODE");
        public static final Ac.b GRID_SIZE = Ac.c.a("GRID_SIZE");
        public static final Ac.b GENERATE = Ac.c.a("GENERATE");
        public static final Ac.b UV_PAINT_GENERATE_UV_TEXT = Ac.c.a("UV_PAINT_GENERATE_UV_TEXT");
        public static final Ac.b GENERATE_NEW_UV = Ac.c.a("GENERATE_NEW_UV");
        public static final Ac.b GENERATE_NEW_BLANK_TEXTURE = Ac.c.a("GENERATE_NEW_BLANK_TEXTURE");
        public static final Ac.b UV_PAINT_WITHOUT_VERTEX_MODEL_RENDERER_WARNING = Ac.c.a("UV_PAINT_WITHOUT_VERTEX_MODEL_RENDERER_WARNING");
        public static final Ac.b UV_PAINT_NOT_USE_WITH_PRIMITIVE_MR_WARNING = Ac.c.a("UV_PAINT_NOT_USE_WITH_PRIMITIVE_MR_WARNING");
        public static final Ac.b UV_PAINT_NOT_USE_WITH_OBJ_MODEL_WARNING = Ac.c.a("UV_PAINT_NOT_USE_WITH_OBJ_MODEL_WARNING");
        public static final Ac.b CUBE = Ac.c.a("CUBE");
        public static final Ac.b SPHERE = Ac.c.a("SPHERE");
        public static final Ac.b CYLINDER = Ac.c.a("CYLINDER");
        public static final Ac.b CIRCLE = Ac.c.a("CIRCLE");
        public static final Ac.b TORUS = Ac.c.a("TORUS");
        public static final Ac.b CAPSULE = Ac.c.a("CAPSULE");
        public static final Ac.b HALF_CAPSULE = Ac.c.a("HALF_CAPSULE");
        public static final Ac.b SQUARE = Ac.c.a("SQUARE");
        public static final Ac.b SQUARE_90 = Ac.c.a("SQUARE90");
        public static final Ac.b SPHERE_LOWPOLY = Ac.c.a("SPHERE_LOWPOLY");
        public static final Ac.b CONE = Ac.c.a("CONE");
        public static final Ac.b CUBEMAP = Ac.c.a("CUBEMAP");
        public static final Ac.b PANORAMA = Ac.c.a("PANORAMA");
        public static final Ac.b VOXEL_CHUNK = Ac.c.a("VOXEL_CHUNK");
        public static final Ac.b VOXEL_PLAYER = Ac.c.a("VOXEL_PLAYER");
        public static final Ac.b VOXEL_SPAWNER = Ac.c.a("VOXEL_SPAWNER");
        public static final Ac.b TERRAIN = Ac.c.a("TERRAIN");
        public static final Ac.b ROAD = Ac.c.a("ROAD");
        public static final Ac.b ROUTE = Ac.c.a("ROUTE");
        public static final Ac.b TEXT_3D = Ac.c.a("TEXT_3D");
        public static final Ac.b HUMAN_SKELETON_JOINTS = Ac.c.a("HUMAN_SKELETON_JOINTS");
        public static final Ac.b PARTICLE_EMITTER = Ac.c.a("PARTICLE_EMITTER");
        public static final Ac.b SUN_LIGHT = Ac.c.a("SUN_LIGHT");
        public static final Ac.b POINT_LIGHT = Ac.c.a("POINT_LIGHT");
        public static final Ac.b SPOT_LIGHT = Ac.c.a("SPOT_LIGHT");
        public static final Ac.b SOUND_PLAYER = Ac.c.a("SOUND_PLAYER");
        public static final Ac.b SOUND_LISTENER = Ac.c.a("SOUND_LISTENER");
        public static final Ac.b SUI_IMAGE = Ac.c.a("SUI_IMAGE");
        public static final Ac.b SUI_PANEL = Ac.c.a("SUI_PANEL");
        public static final Ac.b SUI_TEXT = Ac.c.a("SUI_TEXT");
        public static final Ac.b SUI_CHECK_BOX = Ac.c.a("SUI_CHECK_BOX");
        public static final Ac.b SUI_BUTTON = Ac.c.a("SUI_BUTTON");
        public static final Ac.b SUI_SLIDE_AREA = Ac.c.a("SUI_SLIDE_AREA");
        public static final Ac.b SUI_PROGRESS_BAR_VERTICAL = Ac.c.a("SUI_PROGRESS_BAR_VERTICAL");
        public static final Ac.b SUI_PROGRESS_BAR_HORIZONTAL = Ac.c.a("SUI_PROGRESS_BAR_HORIZONTAL");
        public static final Ac.b SUI_CIRCULAR_PROGRESS_BAR = Ac.c.a("SUI_CIRCULAR_PROGRESS_BAR");
        public static final Ac.b SUI_DRIVING_WHEEL = Ac.c.a("SUI_DRIVING_WHEEL");
        public static final Ac.b RENDER = Ac.c.a("RENDER");
        public static final Ac.b MODEL = Ac.c.a("MODEL");
        public static final Ac.b LIGHT = Ac.c.a("LIGHT");
        public static final Ac.b COLLISION = Ac.c.a("COLLISION");
        public static final Ac.b SOUND = Ac.c.a("SOUND");
        public static final Ac.b SCENARIO = Ac.c.a("SCENARIO");
        public static final Ac.b VEHICLE = Ac.c.a("VEHICLE");
        public static final Ac.b SKIN_MODELS = Ac.c.a("SKIN_MODELS");
        public static final Ac.b PHYSICS = Ac.c.a("PHYSICS");
        public static final Ac.b NPC = Ac.c.a("NPC");
        public static final Ac.b TEXT = Ac.c.a("TEXT");
        public static final Ac.b PROTOTYPING = Ac.c.a("PROTOTYPING");
        public static final Ac.b PARTICLES = Ac.c.a("PARTICLES");
        public static final Ac.b ADD_SCRIPT = Ac.c.a("ADD_SCRIPT");
        public static final Ac.b PASTE_COPIED = Ac.c.a("PASTE_COPIED");
        public static final Ac.b TRANSFORM = Ac.c.a("TRANSFORM");
        public static final Ac.b STATE = Ac.c.a("STATE");
        public static final Ac.b DYNAMIC = Ac.c.a("DYNAMIC");
        public static final Ac.b STATIC = Ac.c.a("STATIC");
        public static final Ac.b POSITION = Ac.c.a("POSITION");
        public static final Ac.b ROTATION = Ac.c.a("ROTATION");
        public static final Ac.b SCALE = Ac.c.a("SCALE");
        public static final Ac.b IGNORE_PARENT = Ac.c.a("IGNORE_PARENT");
        public static final Ac.b CALCULATE_AFTER_PHYSICS = Ac.c.a("CALCULATE_AFTER_PHYSICS");
        public static final Ac.b RESET = Ac.c.a("RESET");
        public static final Ac.b STORE_KEYFRAME = Ac.c.a("STORE_KEYFRAME");
        public static final Ac.b DONT_DESTROY_ON_LOAD = Ac.c.a("DONT_DESTROY_ON_LOAD");
        public static final Ac.b TAG = Ac.c.a("TAG");
        public static final Ac.b CHANGING_META_ID = Ac.c.a("CHANGING_META_ID");
        public static final Ac.b STATIC_BODY = Ac.c.a("STATIC_BODY");
        public static final Ac.b RIGID_BODY = Ac.c.a("RIGID_BODY");
        public static final Ac.b AREA_TRIGGER = Ac.c.a("AREA_TRIGGER");
        public static final Ac.b FORCE_FIELD = Ac.c.a("FORCE_FIELD");
        public static final Ac.b CHARACTER_BODY = Ac.c.a("CHARACTER_BODY");
        public static final Ac.b VEHICLE_PHYSICS = Ac.c.a("VEHICLE_PHYSICS");
        public static final Ac.b LAYER = Ac.c.a("LAYER");
        public static final Ac.b COLLIDERS = Ac.c.a("COLLIDERS");
        public static final Ac.b COLLISIONS = Ac.c.a("COLLISIONS");
        public static final Ac.b PHYSICS_NOT_WORK_ON_OBJECTS_CHILDREN = Ac.c.a("PHYSICS_NOT_WORK_ON_OBJECTS_CHILDREN");
        public static final Ac.b NO_PHYSICS = Ac.c.a("NO_PHYSICS");
        public static final Ac.b MODE = Ac.c.a("MODE");
        public static final Ac.b MODIFIERS = Ac.c.a("MODIFIERS");
        public static final Ac.b MASS = Ac.c.a("MASS");
        public static final Ac.b GRAVITY = Ac.c.a("GRAVITY");
        public static final Ac.b GRAVITY_MULTIPLIER = Ac.c.a("GRAVITY_MULTIPLIER");
        public static final Ac.b CONTINUOUS_ALGORITHM = Ac.c.a("CONTINUOUS_ALGORITHM");
        public static final Ac.b MOTION_THRESHOLD = Ac.c.a("MOTION_THRESHOLD");
        public static final Ac.b SWEPT_SPHERE_RADIUS = Ac.c.a("SWEPT_SPHERE_RADIUS");
        public static final Ac.b FRICTION = Ac.c.a("FRICTION");
        public static final Ac.b LINEAR_DAMPING = Ac.c.a("LINEAR_DAMPING");
        public static final Ac.b ANGULAR_DAMPING = Ac.c.a("ANGULAR_DAMPING");
        public static final Ac.b RESTITUTION = Ac.c.a("RESTITUTION");
        public static final Ac.b FREEZE = Ac.c.a("FREEZE");
        public static final Ac.b FREEZE_POS_X = Ac.c.a("FREEZE_POS_X");
        public static final Ac.b FREEZE_POS_Y = Ac.c.a("FREEZE_POS_Y");
        public static final Ac.b FREEZE_POS_Z = Ac.c.a("FREEZE_POS_Z");
        public static final Ac.b FREEZE_ROT_X = Ac.c.a("FREEZE_ROT_X");
        public static final Ac.b FREEZE_ROT_Y = Ac.c.a("FREEZE_ROT_Y");
        public static final Ac.b FREEZE_ROT_Z = Ac.c.a("FREEZE_ROT_Z");
        public static final Ac.b PHYSICS_ONLY = Ac.c.a("PHYSICS_ONLY");
        public static final Ac.b TRANSFORM_ONLY = Ac.c.a("TRANSFORM_ONLY");
        public static final Ac.b BY_DIRECTIONAL = Ac.c.a("BY_DIRECTIONAL");
        public static final Ac.b PHYSICS_DIRECTIONAL = Ac.c.a("PHYSICS_DIRECTIONAL");
        public static final Ac.b LERP = Ac.c.a("LERP");
        public static final Ac.b DEFAULT = Ac.c.a("DEFAULT");
        public static final Ac.b WIDTH = Ac.c.a("WIDTH");
        public static final Ac.b STEP_HEIGHT = Ac.c.a("STEP_HEIGHT");
        public static final Ac.b FORWARD_SPEED = Ac.c.a("FORWARD_SPEED");
        public static final Ac.b SIDE_SPEED = Ac.c.a("SIDE_SPEED");
        public static final Ac.b JUMP_SPEED = Ac.c.a("JUMP_SPEED");
        public static final Ac.b MAX_FALL_SPEED = Ac.c.a("MAX_FALL_SPEED");
        public static final Ac.b LERP_MOVIMENT = Ac.c.a("LERP_MOVIMENT");
        public static final Ac.b TRIGGERS = Ac.c.a("TRIGGERS");
        public static final Ac.b FORCE = Ac.c.a("FORCE");
        public static final Ac.b ADD_FORCE = Ac.c.a("ADD_FORCE");
        public static final Ac.b ADD_VELOCITY = Ac.c.a("ADD_VELOCITY");
        public static final Ac.b CONSTANT_VELOCITY = Ac.c.a("CONSTANT_VELOCITY");
        public static final Ac.b FORCE_TYPE = Ac.c.a("FORCE_TYPE");
        public static final Ac.b DIRECTION = Ac.c.a("DIRECTION");
        public static final Ac.b FORWARD = Ac.c.a("FORWARD");
        public static final Ac.b BACK_DIRECTION = Ac.c.a("BACK_DIRECTION");
        public static final Ac.b LEFT = Ac.c.a("LEFT");
        public static final Ac.b RIGHT = Ac.c.a("RIGHT");
        public static final Ac.b UP = Ac.c.a("UP");
        public static final Ac.b DOWN = Ac.c.a("DOWN");
        public static final Ac.b FROM_CENTER = Ac.c.a("FROM_CENTER");
        public static final Ac.b WHEELS_LAYER = Ac.c.a("WHEELS_LAYER");
        public static final Ac.b SUSPENSION = Ac.c.a("SUSPENSION");
        public static final Ac.b LENGTH = Ac.c.a("LENGTH");
        public static final Ac.b SUSPENSION_LENGTH = Ac.c.a("SUSPENSION_LENGTH");
        public static final Ac.b COMPRESSION = Ac.c.a("COMPRESSION");
        public static final Ac.b DAMPING = Ac.c.a("DAMPING");
        public static final Ac.b SUSPENSION_STIFFNESS = Ac.c.a("SUSPENSION_STIFFNESS");
        public static final Ac.b STATIC_SUSPENSION = Ac.c.a("STATIC_SUSPENSION");
        public static final Ac.b CONFIRM_EMAIL_WARNING = Ac.c.a("CONFIRM_EMAIL_WARNING");
        public static final Ac.b CONFIRM_CODE_WARNING = Ac.c.a("CONFIRM_CODE_WARNING");
        public static final Ac.b CONFIRM_EMAIL = Ac.c.a("CONFIRM_EMAIL");
        public static final Ac.b EMAIL_NOT_CONFIRMED = Ac.c.a("EMAIL_NOT_CONFIRMED");
        public static final Ac.b EMAIL_RESEND_CODE_AFTER = Ac.c.a("EMAIL_RESEND_CODE_AFTER");
        public static final Ac.b EMAIL_RESEND_CODE = Ac.c.a("EMAIL_RESEND_CODE");
        public static final Ac.b THIS_EMAIL_CORRECT = Ac.c.a("THIS_EMAIL_CORRECT");
        public static final Ac.b CODE = Ac.c.a("CODE");
        public static final Ac.b READ_TERMS_AND_CONDITIONS_OF_USE = Ac.c.a("READ_TERMS_AND_CONDITIONS_OF_USE");
        public static final Ac.b READ_PRIVACY_POLICY = Ac.c.a("READ_PRIVACY_POLICY");
        public static final Ac.b CHANGE_PASSWORD = Ac.c.a("CHANGE_PASSWORD");
        public static final Ac.b DIGIT_EMAIL_CHANGE_PASSWORD = Ac.c.a("DIGIT_EMAIL_CHANGE_PASSWORD");
        public static final Ac.b RECEIVE_EMAIL_CHANGE_PASSWORD = Ac.c.a("RECEIVE_EMAIL_CHANGE_PASSWORD");
        public static final Ac.b FORGOT_PASSWORD = Ac.c.a("FORGOT_PASSWORD");
        public static final Ac.b PASSWORD_RECOVERY_CHECK_YOUR_INBOX = Ac.c.a("PASSWORD_RECOVERY_CHECK_YOUR_INBOX");
        public static final Ac.b PASSWORD_RECOVERY_WARNING_SPAM = Ac.c.a("PASSWORD_RECOVERY_WARNING_SPAM");
        public static final Ac.b ACCOUNT_NAME = Ac.c.a("ACCOUNT_NAME");
        public static final Ac.b PASSWORD_RECOVERY = Ac.c.a("PASSWORD_RECOVERY");
        public static final Ac.b CHANGE_USER_NAME = Ac.c.a("CHANGE_USER_NAME");
        public static final Ac.b CANCEL_VIP = Ac.c.a("CANCEL_VIP");
        public static final Ac.b CHANGE_ACCOUNT_PASSWORD_TEXT = Ac.c.a("CHANGE_ACCOUNT_PASSWORD_TEXT");
        public static final Ac.b CURRENT_PASSWORD_TITTLE = Ac.c.a("CURRENT_PASSWORD_TITTLE");
        public static final Ac.b NEW_PASSWORD_TITTLE = Ac.c.a("NEW_PASSWORD_TITTLE");
        public static final Ac.b CONFIRM_PASSWORD_TITTLE = Ac.c.a("CONFIRM_PASSWORD_TITTLE");
        public static final Ac.b CHANGE_ACCOUNT_PASSWORD_WARNING = Ac.c.a("CHANGE_ACCOUNT_PASSWORD_WARNING");
        public static final Ac.b CHANGE_USER_NAME_TITTLE = Ac.c.a("CHANGE_USER_NAME_TITTLE");
        public static final Ac.b CHANGE_USER_NAME_TEXT = Ac.c.a("CHANGE_USER_NAME_TEXT");
        public static final Ac.b CHANGE_USER_NAME_NEW_TITTLE = Ac.c.a("CHANGE_USER_NAME_NEW_TITTLE");
        public static final Ac.b CHANGE_USER_NAME_WARNING = Ac.c.a("CHANGE_USER_NAME_WARNING");
        public static final Ac.b ACCOUNT_SETTINGS = Ac.c.a("ACCOUNT_SETTINGS");
        public static final Ac.b RENDER_DISTANCE = Ac.c.a("RENDER_DISTANCE");
        public static final Ac.b MINIMAL_DISTANCE = Ac.c.a("MINIMAL_DISTANCE");
        public static final Ac.b EXPOSURE = Ac.c.a("EXPOSURE");
        public static final Ac.b GAMMA = Ac.c.a("GAMMA");
        public static final Ac.b BACKGROUND = Ac.c.a("BACKGROUND");
        public static final Ac.b COLOR = Ac.c.a("COLOR");
        public static final Ac.b RESOLUTION = Ac.c.a("RESOLUTION");
        public static final Ac.b RESOLUTION_PERCENTAGE = Ac.c.a("RESOLUTION_PERCENTAGE");
        public static final Ac.b SIDE = Ac.c.a("SIDE");
        public static final Ac.b PIXELS = Ac.c.a("PIXELS");
        public static final Ac.b PROJECTION = Ac.c.a("PROJECTION");
        public static final Ac.b TYPE = Ac.c.a("TYPE");
        public static final Ac.b FIELD_OF_VIEW = Ac.c.a("FIELD_OF_VIEW");
        public static final Ac.b DIAMETER = Ac.c.a("DIAMETER");
        public static final Ac.b RECT = Ac.c.a("RECT");
        public static final Ac.b FILTERS = Ac.c.a("FILTERS");
        public static final Ac.b YOU_NEED_VIP_MEMBER = Ac.c.a("YOU_NEED_VIP_MEMBER");
        public static final Ac.b ADD_NEW = Ac.c.a("ADD_NEW");
        public static final Ac.b CONVEX_MODEL = Ac.c.a("CONVEX_MODEL");
        public static final Ac.b SHAPE = Ac.c.a("SHAPE");
        public static final Ac.b OFFSET_POSITION = Ac.c.a("OFFSET_POSITION");
        public static final Ac.b OFFSET_ROTATION = Ac.c.a("OFFSET_ROTATION");
        public static final Ac.b OFFSET_SCALE = Ac.c.a("OFFSET_SCALE");
        public static final Ac.b LOAD_MODE = Ac.c.a("LOAD_MODE");
        public static final Ac.b AUTOMATIC = Ac.c.a("AUTOMATIC");
        public static final Ac.b ASYNCHRONOUS = Ac.c.a("ASYNCHRONOUS");
        public static final Ac.b IMMEDIATE = Ac.c.a("IMMEDIATE");
        public static final Ac.b MODEL_COLLIDER_ONLY_WORKS_STATIC_BODY = Ac.c.a("MODEL_COLLIDER_ONLY_WORKS_STATIC_BODY");
        public static final Ac.b PATH_FINDER_COLLIDER = Ac.c.a("PATH_FINDER_COLLIDER");
        public static final Ac.b PATH_FINDER_COLLIDER_STATIC_WARNING = Ac.c.a("PATH_FINDER_COLLIDER_STATIC_WARNING");
        public static final Ac.b MATERIAL = Ac.c.a("MATERIAL");
        public static final Ac.b START_DISTANCE = Ac.c.a("START_DISTANCE");
        public static final Ac.b END_DISTANCE = Ac.c.a("END_DISTANCE");
        public static final Ac.b LEVELS = Ac.c.a("LEVELS");
        public static final Ac.b MINIMAL_QUALITY = Ac.c.a("MINIMAL_QUALITY");
        public static final Ac.b AGGRESSIVENESS = Ac.c.a("AGGRESSIVENESS");
        public static final Ac.b CAST_SHADOWS = Ac.c.a("CAST_SHADOWS");
        public static final Ac.b DUAL_FACE_RENDERER = Ac.c.a("DUAL_FACE_RENDERER");
        public static final Ac.b DISABLED = Ac.c.a("DISABLED");
        public static final Ac.b BAKE_CHANNEL = Ac.c.a("BAKE_CHANNEL");
        public static final Ac.b MODEL_RENDERER = Ac.c.a("MODEL_RENDERER");
        public static final Ac.b COLLIDER = Ac.c.a("COLLIDER");
        public static final Ac.b BOX_COLLIDER = Ac.c.a("BOX_COLLIDER");
        public static final Ac.b SPHERE_COLLIDER = Ac.c.a("SPHERE_COLLIDER");
        public static final Ac.b MODEL_COLLIDER = Ac.c.a("MODEL_COLLIDER");
        public static final Ac.b CONVEX_COLLIDER = Ac.c.a("CONVEX_COLLIDER");
        public static final Ac.b SIMPLE = Ac.c.a("SIMPLE");
        public static final Ac.b POST_PROCESSING = Ac.c.a("POST_PROCESSING");
        public static final Ac.b DISTANCE = Ac.c.a("DISTANCE");
        public static final Ac.b MIN_ANGLE = Ac.c.a("MIN_ANGLE");
        public static final Ac.b MAX_ANGLE = Ac.c.a("MAX_ANGLE");
        public static final Ac.b SHADOW = Ac.c.a("SHADOW");
        public static final Ac.b POINT = Ac.c.a("POINT");
        public static final Ac.b SPOT = Ac.c.a("SPOT");
        public static final Ac.b SUN = Ac.c.a("SUN");
        public static final Ac.b SHADOW_STRENGTH = Ac.c.a("SHADOW_STRENGTH");
        public static final Ac.b SHADOW_RESOLUTION = Ac.c.a("SHADOW_RESOLUTION");
        public static final Ac.b MIN_BIAS = Ac.c.a("MIN_BIAS");
        public static final Ac.b MAX_BIAS = Ac.c.a("MAX_BIAS");
        public static final Ac.b VISIBLE_DISTANCE = Ac.c.a("VISIBLE_DISTANCE");
        public static final Ac.b BLUR = Ac.c.a("BLUR");
        public static final Ac.b SHADOW_MINIMAL_DISTANCE = Ac.c.a("SHADOW_MINIMAL_DISTANCE");
        public static final Ac.b PATH_FINDER = Ac.c.a("PATH_FINDER");
        public static final Ac.b AGENT = Ac.c.a("AGENT");
        public static final Ac.b AI_HUB = Ac.c.a("AI_HUB");
        public static final Ac.b AI_WELCOME = Ac.c.a("AI_WELCOME");
        public static final Ac.b AI_WELCOME_DESCRIPTION = Ac.c.a("AI_WELCOME_DESCRIPTION");
        public static final Ac.b AI_AVAILABLE_SPECIALISTS = Ac.c.a("AI_AVAILABLE_SPECIALISTS");
        public static final Ac.b AI_RUNNING_CHATS = Ac.c.a("AI_RUNNING_CHATS");
        public static final Ac.b AI_NO_RUNNING_CHATS = Ac.c.a("AI_NO_RUNNING_CHATS");
        public static final Ac.b AI_RUNNING_CHAT_NOW = Ac.c.a("AI_RUNNING_CHAT_NOW");
        public static final Ac.b AI_NEW_CHAT = Ac.c.a("AI_NEW_CHAT");
        public static final Ac.b AI_CHAT = Ac.c.a("AI_CHAT");
        public static final Ac.b AI_TYPING = Ac.c.a("AI_TYPING");
        public static final Ac.b AI_CONNECTING = Ac.c.a("AI_CONNECTING");
        public static final Ac.b AI_STARTING_ENGINE = Ac.c.a("AI_STARTING_ENGINE");
        public static final Ac.b AI_SEND = Ac.c.a("AI_SEND");
        public static final Ac.b AI_ERROR = Ac.c.a("AI_ERROR");
        public static final Ac.b AI_CHAT_INPUT_HINT = Ac.c.a("AI_CHAT_INPUT_HINT");
        public static final Ac.b AI_SPECIALIST_JAVA_CODING = Ac.c.a("AI_SPECIALIST_JAVA_CODING");
        public static final Ac.b AI_SPECIALIST_LUA_CODING = Ac.c.a("AI_SPECIALIST_LUA_CODING");
        public static final Ac.b AI_SPECIALIST_LEVEL_EDITION = Ac.c.a("AI_SPECIALIST_LEVEL_EDITION");
        public static final Ac.b LOOK = Ac.c.a("LOOK");
        public static final Ac.b TARGET = Ac.c.a("TARGET");
        public static final Ac.b SEARCH_DELAY = Ac.c.a("SEARCH_DELAY");
        public static final Ac.b MINIMAL_POINT_DISTANCE = Ac.c.a("MINIMAL_POINT_DISTANCE");
        public static final Ac.b LOOK_LERP = Ac.c.a("LOOK_LERP");
        public static final Ac.b LOOK_IGNORE_Y = Ac.c.a("LOOK_IGNORE_Y");
        public static final Ac.b REFRESH_DISTANCE = Ac.c.a("REFRESH_DISTANCE");
        public static final Ac.b EDITOR_GIZMO = Ac.c.a("EDITOR_GIZMO");
        public static final Ac.b IN_GAME_GIZMO = Ac.c.a("IN_GAME_GIZMO");
        public static final Ac.b OBJECT = Ac.c.a("OBJECT");
        public static final Ac.b ROUTE_FOLLOWER = Ac.c.a("ROUTE_FOLLOWER");
        public static final Ac.b ANIMATION_PLAYER = Ac.c.a("ANIMATION_PLAYER");
        public static final Ac.b ANIMATION_LIST = Ac.c.a("ANIMATION_LIST");
        public static final Ac.b ADD_ANIMATION = Ac.c.a("ADD_ANIMATION");
        public static final Ac.b PLAY_ON_START = Ac.c.a("PLAY_ON_START");
        public static final Ac.b PLAY_IN_LOOP_AT_START = Ac.c.a("PLAY_IN_LOOP_AT_START");
        public static final Ac.b ANIMATOR = Ac.c.a("ANIMATOR");
        public static final Ac.b CREATE_NEW_ANIMATION = Ac.c.a("CREATE_NEW_ANIMATION");
        public static final Ac.b SPACE = Ac.c.a("SPACE");
        public static final Ac.b MAX_PARTICLES = Ac.c.a("MAX_PARTICLES");
        public static final Ac.b MAX_LIFE_SECONDS = Ac.c.a("MAX_LIFE_SECONDS");
        public static final Ac.b TRANSPARENCY = Ac.c.a("TRANSPARENCY");
        public static final Ac.b COLOR_MODE = Ac.c.a("COLOR_MODE");
        public static final Ac.b ALPHA_BASED = Ac.c.a("ALPHA_BASED");
        public static final Ac.b ALPHA_OVER_LIFE_TIME = Ac.c.a("ALPHA_OVER_LIFE_TIME");
        public static final Ac.b SIZE_BASED = Ac.c.a("SIZE_BASED");
        public static final Ac.b SIZE_OVER_LIFE_TIME = Ac.c.a("SIZE_OVER_LIFE_TIME");
        public static final Ac.b START_SIZE = Ac.c.a("START_SIZE");
        public static final Ac.b EMISSION = Ac.c.a("EMISSION");
        public static final Ac.b EMISSION_DELAY = Ac.c.a("EMISSION_DELAY");
        public static final Ac.b RADIUS = Ac.c.a("RADIUS");
        public static final Ac.b SPHERIZE = Ac.c.a("SPHERIZE");
        public static final Ac.b RANDOMIZE = Ac.c.a("RANDOMIZE");
        public static final Ac.b SPEED = Ac.c.a("SPEED");
        public static final Ac.b START_SPEED = Ac.c.a("START_SPEED");
        public static final Ac.b BY_SPEED = Ac.c.a("BY_SPEED");
        public static final Ac.b CONSTANT = Ac.c.a("CONSTANT");
        public static final Ac.b NONE = Ac.c.a(KeyProperties.DIGEST_NONE);
        public static final Ac.b NORMAL = Ac.c.a("NORMAL");
        public static final Ac.b ADDITIVE = Ac.c.a("ADDITIVE");
        public static final Ac.b ALPHA = Ac.c.a("ALPHA");
        public static final Ac.b GREY_SCALE = Ac.c.a("GREY_SCALE");
        public static final Ac.b HPOP_FILE = Ac.c.a("HPOP_FILE");
        public static final Ac.b MODEL_AND_MATERIAL = Ac.c.a("MODEL_AND_MATERIAL");
        public static final Ac.b BAKE = Ac.c.a("BAKE");
        public static final Ac.b ENABLE_MAX_DISTANCE = Ac.c.a("ENABLE_MAX_DISTANCE");
        public static final Ac.b GENERATE_BAKE = Ac.c.a("GENERATE_BAKE");
        public static final Ac.b VERTICES = Ac.c.a("VERTICES");
        public static final Ac.b DELETE_ALL_HPOPS = Ac.c.a("DELETE_ALL_HPOPS");
        public static final Ac.b REMOVE_ALL = Ac.c.a("REMOVE_ALL");
        public static final Ac.b ALL_OBJECTS_FROM_THIS_HPOP_WILL_BE_DELETED = Ac.c.a("ALL_OBJECTS_FROM_THIS_HPOP_WILL_BE_DELETED");
        public static final Ac.b VEHICLE_WHEEL = Ac.c.a("VEHICLE_WHEEL");
        public static final Ac.b CONTACT_POINT = Ac.c.a("CONTACT_POINT");
        public static final Ac.b SHOW_REPRESENTATION = Ac.c.a("SHOW_REPRESENTATION");
        public static final Ac.b STEERABLE = Ac.c.a("STEERABLE");
        public static final Ac.b SUSPENSION_REST_LENGTH = Ac.c.a("SUSPENSION_REST_LENGTH");
        public static final Ac.b FRICTION_SLIP = Ac.c.a("FRICTION_SLIP");
        public static final Ac.b ENABLE_POS_PHYSICS_FUNCTION = Ac.c.a("ENABLE_POS_PHYSICS_FUNCTION");
        public static final Ac.b TORQUE = Ac.c.a("TORQUE");
        public static final Ac.b BRAKE = Ac.c.a("BRAKE");
        public static final Ac.b FONT = Ac.c.a("FONT");
        public static final Ac.b HINGE_CONSTRAINT = Ac.c.a("HINGE_CONSTRAINT");
        public static final Ac.b POINT_CONSTRAINT = Ac.c.a("POINT_CONSTRAINT");
        public static final Ac.b OBJECT_A = Ac.c.a("OBJECT_A");
        public static final Ac.b OBJECT_B = Ac.c.a("OBJECT_B");
        public static final Ac.b PIVOT_A = Ac.c.a("PIVOT_A");
        public static final Ac.b PIVOT_B = Ac.c.a("PIVOT_B");
        public static final Ac.b CONNECT_LERP_DISTANCE = Ac.c.a("CONNECT_LERP_DISTANCE");
        public static final Ac.b CONNECT_LERP_SPEED = Ac.c.a("CONNECT_LERP_SPEED");
        public static final Ac.b CONNECT_MODE = Ac.c.a("CONNECT_MODE");
        public static final Ac.b EXPONENTIAL = Ac.c.a("EXPONENTIAL");
        public static final Ac.b LEVEL_ROAD = Ac.c.a("LEVEL_ROAD");
        public static final Ac.b LEVEL_TERRAIN = Ac.c.a("LEVEL_TERRAIN");
        public static final Ac.b TERRAIN_BORDER = Ac.c.a("TERRAIN_BORDER");
        public static final Ac.b VERTICAL_OFFSET = Ac.c.a("VERTICAL_OFFSET");
        public static final Ac.b ROAD_BORDER = Ac.c.a("ROAD_BORDER");
        public static final Ac.b ROAD_BORDER_VERTICAL_OFFSET = Ac.c.a("ROAD_BORDER_VERTICAL_OFFSET");
        public static final Ac.b ROAD_BORDER_UV = Ac.c.a("ROAD_BORDER_UV");
        public static final Ac.b TEXTURE_WIDTH = Ac.c.a("TEXTURE_WIDTH");
        public static final Ac.b TEXTURE_MODE = Ac.c.a("TEXTURE_MODE");
        public static final Ac.b MODEL_RENDERER_MISSING_MATERIAL = Ac.c.a("MODEL_RENDERER_MISSING_MATERIAL");
        public static final Ac.b CREATE_NEW_MATERIAL = Ac.c.a("CREATE_NEW_MATERIAL");
        public static final Ac.b ROAD_POINT = Ac.c.a("ROAD_POINT");
        public static final Ac.b SUBDIVIDE_BACKWARD = Ac.c.a("SUBDIVIDE_BACKWARD");
        public static final Ac.b SUBDIVIDE_FORWARD = Ac.c.a("SUBDIVIDE_FORWARD");
        public static final Ac.b SOUND_FILE = Ac.c.a("SOUND_FILE");
        public static final Ac.b LOOP = Ac.c.a("LOOP");
        public static final Ac.b PITCH = Ac.c.a("PITCH");
        public static final Ac.b DISTANCE_CURVE = Ac.c.a("DISTANCE_CURVE");
        public static final Ac.b STOP = Ac.c.a("STOP");
        public static final Ac.b PLAY = Ac.c.a("PLAY");
        public static final Ac.b LOADING_SOUND_IN_BACKGROUND = Ac.c.a("LOADING_SOUND_IN_BACKGROUND");
        public static final Ac.b SOUND_PLAYING_IN_3D_SPACE = Ac.c.a("SOUND_PLAYING_IN_3D_SPACE");
        public static final Ac.b CONFIRM_DELETE_SELECTED_TEXTURE_LAYER = Ac.c.a("CONFIRM_DELETE_SELECTED_TEXTURE_LAYER");
        public static final Ac.b BRUSH_SIZE = Ac.c.a("BRUSH_SIZE");
        public static final Ac.b BRUSH_INTENSITY = Ac.c.a("BRUSH_INTENSITY");
        public static final Ac.b RAISE = Ac.c.a("RAISE");
        public static final Ac.b LOWER = Ac.c.a("LOWER");
        public static final Ac.b DELETE_SELECTED = Ac.c.a("DELETE_SELECTED");
        public static final Ac.b YES = Ac.c.a("YES");
        public static final Ac.b NO = Ac.c.a("NO");
        public static final Ac.b SPECULAR = Ac.c.a("SPECULAR");
        public static final Ac.b FILL_TERRAIN = Ac.c.a("FILL_TERRAIN");
        public static final Ac.b DEBUG_PERLIN = Ac.c.a("DEBUG_PERLIN");
        public static final Ac.b DEBUG_RANDOM = Ac.c.a("DEBUG_RANDOM");
        public static final Ac.b WIREFRAME_MODE = Ac.c.a("WIREFRAME_MODE");
        public static final Ac.b MAX_DISTANCE = Ac.c.a("MAX_DISTANCE");
        public static final Ac.b MAX_HEIGHT = Ac.c.a("MAX_HEIGHT");
        public static final Ac.b ENABLE_COLLISION = Ac.c.a("ENABLE_COLLISION");
        public static final Ac.b COLLISION_HEIGHT = Ac.c.a("COLLISION_HEIGHT");
        public static final Ac.b MAX_CHUNKS = Ac.c.a("MAX_CHUNKS");
        public static final Ac.b MIN_CHUNK_RESOLUTION = Ac.c.a("MIN_CHUNK_RESOLUTION");
        public static final Ac.b FIRST_COLLIDER = Ac.c.a("FIRST_COLLIDER");
        public static final Ac.b NEXT_COLLIDERS = Ac.c.a("NEXT_COLLIDERS");
        public static final Ac.b MISSING_TERRAIN_DATA_FILE = Ac.c.a("MISSING_TERRAIN_DATA_FILE");
        public static final Ac.b DATA = Ac.c.a("DATA");
        public static final Ac.b LAYERS_RESOLUTION = Ac.c.a("LAYERS_RESOLUTION");
        public static final Ac.b IMPORT_HEIGHTMAP_HEIGHT = Ac.c.a("IMPORT_HEIGHTMAP_HEIGHT");
        public static final Ac.b IMPORT_HEIGHTMAP = Ac.c.a("IMPORT_HEIGHTMAP");
        public static final Ac.b BLOCK_GAME = Ac.c.a("BLOCK_GAME");
        public static final Ac.b IGNORE_SAVE = Ac.c.a("IGNORE_SAVE");
        public static final Ac.b TEXTURES = Ac.c.a("TEXTURES");
        public static final Ac.b NORMAL_MAP = Ac.c.a("NORMAL_MAP");
        public static final Ac.b ENEMY_AI_TYPE_A = Ac.c.a("ENEMY_AI_TYPE_A");
        public static final Ac.b MISSING_PATHFINDER_COMPONENT = Ac.c.a("MISSING_PATHFINDER_COMPONENT");
        public static final Ac.b ADD_NEW_PATHFINDER = Ac.c.a("ADD_NEW_PATHFINDER");
        public static final Ac.b MISSING_CHARACTER_BODY_PHYSICS_COMPONENT = Ac.c.a("MISSING_CHARACTER_BODY_PHYSICS_COMPONENT");
        public static final Ac.b SET_CHARACTER_BODY = Ac.c.a("SET_CHARACTER_BODY");
        public static final Ac.b MOVEMENT_MODE = Ac.c.a("MOVEMENT_MODE");
        public static final Ac.b STICK_BOTTOM = Ac.c.a("STICK_BOTTOM");
        public static final Ac.b RAY_DISTANCE = Ac.c.a("RAY_DISTANCE");
        public static final Ac.b RAY_OFFSET = Ac.c.a("RAY_OFFSET");
        public static final Ac.b STICK_BOTTOM_OFFSET = Ac.c.a("STICK_BOTTOM_OFFSET");
        public static final Ac.b WALK_SPEED = Ac.c.a("WALK_SPEED");
        public static final Ac.b RUN_SPEED = Ac.c.a("RUN_SPEED");
        public static final Ac.b WANTED_POINT = Ac.c.a("WANTED_POINT");
        public static final Ac.b SWAP_POINT_DISTANCE = Ac.c.a("SWAP_POINT_DISTANCE");
        public static final Ac.b POINTS = Ac.c.a("POINTS");
        public static final Ac.b ATTACK_DISTANCE = Ac.c.a("ATTACK_DISTANCE");
        public static final Ac.b ATTACK_DELAY = Ac.c.a("ATTACK_DELAY");
        public static final Ac.b ATTACK_FUNCTION = Ac.c.a("ATTACK_FUNCTION");
        public static final Ac.b TARGETS_TAG = Ac.c.a("TARGETS_TAG");
        public static final Ac.b NAME = Ac.c.a("NAME");
        public static final Ac.b ARGUMENT_TYPE = Ac.c.a("ARGUMENT_TYPE");
        public static final Ac.b VALUE = Ac.c.a("VALUE");
        public static final Ac.b PLEASE_CONFIGURE_TARGET_TAG = Ac.c.a("PLEASE_CONFIGURE_TARGET_TAG");
        public static final Ac.b BLINK_LIGHT = Ac.c.a("BLINK_LIGHT");
        public static final Ac.b MISSING_LIGHT_COMPONENT = Ac.c.a("MISSING_LIGHT_COMPONENT");
        public static final Ac.b ADD_NEW_LIGHT = Ac.c.a("ADD_NEW_LIGHT");
        public static final Ac.b PATTERN = Ac.c.a("PATTERN");
        public static final Ac.b FREQUENCY = Ac.c.a("FREQUENCY");
        public static final Ac.b OFF_INTENSITY = Ac.c.a("OFF_INTENSITY");
        public static final Ac.b ON_INTENSITY = Ac.c.a("ON_INTENSITY");
        public static final Ac.b OFF_COLOR = Ac.c.a("OFF_COLOR");
        public static final Ac.b ON_COLOR = Ac.c.a("ON_COLOR");
        public static final Ac.b LERP_SPEED = Ac.c.a("LERP_SPEED");
        public static final Ac.b REVERSE = Ac.c.a("REVERSE");
        public static final Ac.b PLAY_IN_EDITOR = Ac.c.a("PLAY_IN_EDITOR");
        public static final Ac.b PATTERN_EMPTY = Ac.c.a("PATTERN_EMPTY");
        public static final Ac.b DIRECTIONAL_DOOR = Ac.c.a("DIRECTIONAL_DOOR");
        public static final Ac.b LOCKED = Ac.c.a("LOCKED");
        public static final Ac.b START_OPEN = Ac.c.a("START_OPEN");
        public static final Ac.b MOVEMENT_DIRECTION = Ac.c.a("MOVEMENT_DIRECTION");
        public static final Ac.b MOVEMENT_DISTANCE = Ac.c.a("MOVEMENT_DISTANCE");
        public static final Ac.b MOVEMENT_SPEED = Ac.c.a("MOVEMENT_SPEED");
        public static final Ac.b AUTO_CLOSE = Ac.c.a("AUTO_CLOSE");
        public static final Ac.b AUTO_CLOSE_DELAY = Ac.c.a("AUTO_CLOSE_DELAY");
        public static final Ac.b LASER_CASTING = Ac.c.a("LASER_CASTING");
        public static final Ac.b INFINITY = Ac.c.a("INFINITY");
        public static final Ac.b PHYSICAL_BUTTON = Ac.c.a("PHYSICAL_BUTTON");
        public static final Ac.b RESET_DELAY = Ac.c.a("RESET_DELAY");
        public static final Ac.b SLIDE_ROTATE = Ac.c.a("SLIDE_ROTATE");
        public static final Ac.b SENSIBILITY = Ac.c.a("SENSIBILITY");
        public static final Ac.b LIMITED = Ac.c.a("LIMITED");
        public static final Ac.b AXIS_NAME = Ac.c.a("AXIS_NAME");
        public static final Ac.b SMOOTH_CAMERA_FOLLOW = Ac.c.a("SMOOTH_CAMERA_FOLLOW");
        public static final Ac.b MAX_HEIGHT_DISTANCE = Ac.c.a("MAX_HEIGHT_DISTANCE");
        public static final Ac.b HEIGHT_DAMPING = Ac.c.a("HEIGHT_DAMPING");
        public static final Ac.b ROTATION_DAMPING = Ac.c.a("ROTATION_DAMPING");
        public static final Ac.b STAND_UP = Ac.c.a("STAND_UP");
        public static final Ac.b VEHICLE_AI = Ac.c.a("VEHICLE_AI");
        public static final Ac.b MAX_TORQUE = Ac.c.a("MAX_TORQUE");
        public static final Ac.b MAX_STEER_ANGLE = Ac.c.a("MAX_STEER_ANGLE");
        public static final Ac.b REVERSE_WHEN_TARGET_BEHIND = Ac.c.a("REVERSE_WHEN_TARGET_BEHIND");
        public static final Ac.b VEHICLE_AI_WHEEL = Ac.c.a("VEHICLE_AI_WHEEL");
        public static final Ac.b IS_STEERING_WHEEL = Ac.c.a("IS_STEERING_WHEEL");
        public static final Ac.b IS_TORQUE_WHEEL = Ac.c.a("IS_TORQUE_WHEEL");
        public static final Ac.b SKINNED_MODEL_RENDERER_WARNING = Ac.c.a("SKINNED_MODEL_RENDERER_WARNING");
        public static final Ac.b SKINNED_MODEL_RENDERER = Ac.c.a("SKINNED_MODEL_RENDERER");
        public static final Ac.b SHOW_GIZMO = Ac.c.a("SHOW_GIZMO");
        public static final Ac.b STORED_POSES = Ac.c.a("STORED_POSES");
        public static final Ac.b STORE_POSE = Ac.c.a("STORE_POSE");
        public static final Ac.b CONNECTED_JOINTS_ON = Ac.c.a("CONNECTED_JOINTS_ON");
        public static final Ac.b PARTS = Ac.c.a("PARTS");
        public static final Ac.b CONNECTED_JOINTS = Ac.c.a("CONNECTED_JOINTS");
        public static final Ac.b CONVERT_MR_TO_SKINNEDMR = Ac.c.a("CONVERT_MR_TO_SKINNEDMR");
        public static final Ac.b SKIN_JOINT = Ac.c.a("SKIN_JOINT");
        public static final Ac.b INDEX = Ac.c.a(l.f16635c);
        public static final Ac.b OBJECT_LINK = Ac.c.a("OBJECT_LINK");
        public static final Ac.b LINKED_TO = Ac.c.a("LINKED_TO");
        public static final Ac.b DIFFERENCES = Ac.c.a("DIFFERENCES");
        public static final Ac.b EXPORTED_TO = Ac.c.a("EXPORTED_TO");
        public static final Ac.b APPLY_CHANGES_TO_FILE = Ac.c.a("APPLY_CHANGES_TO_FILE");
        public static final Ac.b RENDER_LIGHT = Ac.c.a("RENDER_LIGHT");
        public static final Ac.b RENDER_FOG = Ac.c.a("RENDER_FOG");
        public static final Ac.b RENDER_GRID = Ac.c.a("RENDER_GRID");
        public static final Ac.b RENDER_3D_CURSOR = Ac.c.a("RENDER_3D_CURSOR");
        public static final Ac.b FOCUS_CAMERA_ON_CENTER = Ac.c.a("FOCUS_CAMERA_ON_CENTER");
        public static final Ac.b ON = Ac.c.a("ON");
        public static final Ac.b OFF = Ac.c.a("OFF");
        public static final Ac.b OFFSET = Ac.c.a("OFFSET");
        public static final Ac.b VOXELS_PHYSICS = Ac.c.a("VOXELS_PHYSICS");
        public static final Ac.b ITS_MAGIC_PHYSICS = Ac.c.a("ITS_MAGIC_PHYSICS");
        public static final Ac.b BUILD_MODE = Ac.c.a("BUILD_MODE");
        public static final Ac.b POSITION_AS_COORDINATES_OFFSET = Ac.c.a("POSITION_AS_COORDINATES_OFFSET");
        public static final Ac.b GENERATOR = Ac.c.a("GENERATOR");
        public static final Ac.b BLOCKS_PER_SIDE_IN_TEXTURE = Ac.c.a("BLOCKS_PER_SIDE_IN_TEXTURE");
        public static final Ac.b ADD_NEW_MODEL_RENDERER = Ac.c.a("ADD_NEW_MODEL_RENDERER");
        public static final Ac.b ADD_NEW_COLLIDER = Ac.c.a("ADD_NEW_COLLIDER");
        public static final Ac.b MISSING_MODEL_RENDERER_COMPONENT = Ac.c.a("MISSING_MODEL_RENDERER_COMPONENT");
        public static final Ac.b MISSING_COLLIDER_COMPONENT = Ac.c.a("MISSING_COLLIDER_COMPONENT");
        public static final Ac.b PLEASE_SELECT_OBJECT_WITH_VOXEL_GENERATOR_COMPONENT = Ac.c.a("PLEASE_SELECT_OBJECT_WITH_VOXEL_GENERATOR_COMPONENT");
        public static final Ac.b VOXEL_CHUNK_SPAWNER = Ac.c.a("VOXEL_CHUNK_SPAWNER");
        public static final Ac.b DISTANCE_CHUNKS = Ac.c.a("DISTANCE_CHUNKS");
        public static final Ac.b UPDATE_DELAY = Ac.c.a("UPDATE_DELAY");
        public static final Ac.b DISABLE_RENDER_BATCHING = Ac.c.a("DISABLE_RENDER_BATCHING");
        public static final Ac.b ONLY_VISIBLE_CHUNKS = Ac.c.a("ONLY_VISIBLE_CHUNKS");
        public static final Ac.b VISIBLE_DOT = Ac.c.a("VISIBLE_DOT");
        public static final Ac.b CHUNK_SETTINGS = Ac.c.a("CHUNK_SETTINGS");
        public static final Ac.b VOXEL_COLLIDER = Ac.c.a("VOXEL_COLLIDER");
        public static final Ac.b HORIZONTAL_SIZE = Ac.c.a("HORIZONTAL_SIZE");
        public static final Ac.b VERTICAL_SIZE = Ac.c.a("VERTICAL_SIZE");
        public static final Ac.b VOXEL_GENERATOR = Ac.c.a("VOXEL_GENERATOR");
        public static final Ac.b VOXEL_HAND = Ac.c.a("VOXEL_HAND");
        public static final Ac.b BREAK_KEY_NAME = Ac.c.a("BREAK_KEY_NAME");
        public static final Ac.b PUT_KEY_NAME = Ac.c.a("PUT_KEY_NAME");
        public static final Ac.b GIZMO_OBJECT = Ac.c.a("GIZMO_OBJECT");
        public static final Ac.b GIZMO_UPDATE_DELAY = Ac.c.a("GIZMO_UPDATE_DELAY");
        public static final Ac.b SELECTED_BLOCK_ID = Ac.c.a("SELECTED_BLOCK_ID");
        public static final Ac.b SHOW_CROSSHAIR = Ac.c.a("SHOW_CROSSHAIR");
        public static final Ac.b CROSSHAIR = Ac.c.a("CROSSHAIR");
        public static final Ac.b CROSSHAIR_SIZE = Ac.c.a("CROSSHAIR_SIZE");
        public static final Ac.b CROSSHAIR_COLOR = Ac.c.a("CROSSHAIR_COLOR");
        public static final Ac.b VOXEL_PHYSICS = Ac.c.a("VOXEL_PHYSICS");
        public static final Ac.b MAX_GRAVITY_SPEED = Ac.c.a("MAX_GRAVITY_SPEED");
        public static final Ac.b MAX_CLIMB_HEIGHT = Ac.c.a("MAX_CLIMB_HEIGHT");
        public static final Ac.b CLIMB_SPEED = Ac.c.a("CLIMB_SPEED");
        public static final Ac.b VELOCITY = Ac.c.a("VELOCITY");
        public static final Ac.b VOXEL_PLAYER_CONTROLLER = Ac.c.a("VOXEL_PLAYER_CONTROLLER");
        public static final Ac.b JOYSTICK_NAME = Ac.c.a("JOYSTICK_NAME");
        public static final Ac.b SLIDE_SENSIBILITY = Ac.c.a("SLIDE_SENSIBILITY");
        public static final Ac.b SLIDE_AXIS_NAME = Ac.c.a("SLIDE_AXIS_NAME");
        public static final Ac.b INVALID_JOYSTICK_AXIS_NAME = Ac.c.a("INVALID_JOYSTICK_AXIS_NAME");
        public static final Ac.b INVALID_SLIDE_AXIS_NAME = Ac.c.a("INVALID_SLIDE_AXIS_NAME");
        public static final Ac.b SUSPENDED_PRODUCT_TEXT = Ac.c.a("SUSPENDED_PRODUCT_TEXT");
        public static final Ac.b WARNING = Ac.c.a("WARNING");
        public static final Ac.b PLEASE_SELECT_OBJECT_WITH_SUIRECT_COMPONENT = Ac.c.a("PLEASE_SELECT_OBJECT_WITH_SUIRECT_COMPONENT");
        public static final Ac.b ON_NORMAL = Ac.c.a("ON_NORMAL");
        public static final Ac.b ON_PRESSED = Ac.c.a("ON_PRESSED");
        public static final Ac.b EVENT = Ac.c.a("EVENT");
        public static final Ac.b IMAGE = Ac.c.a("IMAGE");
        public static final Ac.b BORDER = Ac.c.a("BORDER");
        public static final Ac.b IGNORE_MASK = Ac.c.a("IGNORE_MASK");
        public static final Ac.b CLICKABLE = Ac.c.a("CLICKABLE");
        public static final Ac.b IGNORE_SLIDE_FROM_OUTSIDE_TO_INSIDE = Ac.c.a("IGNORE_SLIDE_FROM_OUTSIDE_TO_INSIDE");
        public static final Ac.b DISPATCH_TOUCH_WHEN_OUTSIDE_RECT = Ac.c.a("DISPATCH_TOUCH_WHEN_OUTSIDE_RECT");
        public static final Ac.b INPUT_MODE = Ac.c.a("INPUT_MODE");
        public static final Ac.b TARGET_RECT = Ac.c.a("TARGET_RECT");
        public static final Ac.b SLICED = Ac.c.a("SLICED");
        public static final Ac.b GHOST = Ac.c.a("GHOST");
        public static final Ac.b LAYER_SYSTEM = Ac.c.a("LAYER_SYSTEM");
        public static final Ac.b OTHER = Ac.c.a("OTHER");
        public static final Ac.b MY_SELF = Ac.c.a("MY_SELF");
        public static final Ac.b PARENT = Ac.c.a("PARENT");
        public static final Ac.b UNIT = Ac.c.a("UNIT");
        public static final Ac.b FULL_MEMORY_WARNING = Ac.c.a("FULL_MEMORY_WARNING");
        public static final Ac.b FULL_MEMORY_WARNING_STOP_APP = Ac.c.a("FULL_MEMORY_WARNING_STOP_APP");
        public static final Ac.b ON_UNCHECKED = Ac.c.a("ON_UNCHECKED");
        public static final Ac.b ON_CHECKED = Ac.c.a("ON_CHECKED");
        public static final Ac.b CHECKED = Ac.c.a("CHECKED");
        public static final Ac.b MAX_VALUE = Ac.c.a("MAX_VALUE");
        public static final Ac.b MASK_MAX_LENGTH = Ac.c.a("MASK_MAX_LENGTH");
        public static final Ac.b SET_MASK = Ac.c.a("SET_MASK");
        public static final Ac.b SET_TEXT = Ac.c.a("SET_TEXT");
        public static final Ac.b FONT_COLOR = Ac.c.a("FONT_COLOR");
        public static final Ac.b SCALE_BASED = Ac.c.a("SCALE_BASED");
        public static final Ac.b TEXT_ALIGNMENT = Ac.c.a("TEXT_ALIGNMENT");
        public static final Ac.b FIXED = Ac.c.a("FIXED");
        public static final Ac.b SCREEN_PERCENTAGE = Ac.c.a("SCREEN_PERCENTAGE");
        public static final Ac.b UNLOCK_ALL_FEATURES_VIP_SUBSCRIPTION = Ac.c.a("UNLOCK_ALL_FEATURES_VIP_SUBSCRIPTION");
        public static final Ac.b BECOME_PROFESSIONAL_DEVELOPER = Ac.c.a("BECOME_PROFESSIONAL_DEVELOPER");
        public static final Ac.b MOST_POPULAR = Ac.c.a("MOST_POPULAR");
        public static final Ac.b BEST_PRICE = Ac.c.a("BEST_PRICE");
        public static final Ac.b SIGN = Ac.c.a("SIGN");
        public static final Ac.b SEE_ALL_BENEFITS = Ac.c.a("SEE_ALL_BENEFITS");
        public static final Ac.b TALK_TO_US = Ac.c.a("TALK_TO_US");
        public static final Ac.b SUB_MONTH_INFO_TEXT = Ac.c.a("SUB_MONTH_INFO_TEXT");
        public static final Ac.b SUB_YEAR_INFO_TEXT = Ac.c.a("SUB_YEAR_INFO_TEXT");
        public static final Ac.b SUB_MONTH_INFO_TEXT_CS = Ac.c.a("SUB_MONTH_INFO_TEXT_CS");
        public static final Ac.b SUB_YEAR_INFO_TEXT_CS = Ac.c.a("SUB_YEAR_INFO_TEXT_CS");
        public static final Ac.b SUB_MONTH = Ac.c.a("SUB_MONTH");
        public static final Ac.b SUB_YEAR = Ac.c.a("SUB_YEAR");
        public static final Ac.b SUB_LIFETIME_INFO_TEXT = Ac.c.a("SUB_LIFETIME_INFO_TEXT");
        public static final Ac.b SPECIALS = Ac.c.a("SPECIALS");
        public static final Ac.b WORLDS = Ac.c.a("WORLDS");
        public static final Ac.b MATERIALS = Ac.c.a("MATERIALS");
        public static final Ac.b VERTEX = Ac.c.a("VERTEX");
        public static final Ac.b SONGS = Ac.c.a("SONGS");
        public static final Ac.b SCRIPTS = Ac.c.a("SCRIPTS");
        public static final Ac.b WIDTH_PERCENTAGE = Ac.c.a("WIDTH_PERCENTAGE");
        public static final Ac.b HEIGHT_PERCENTAGE = Ac.c.a("HEIGHT_PERCENTAGE");
        public static final Ac.b MARGIN = Ac.c.a("MARGIN");
        public static final Ac.b LEFT_MARGIN = Ac.c.a("LEFT_MARGIN");
        public static final Ac.b TOP_MARGIN = Ac.c.a("TOP_MARGIN");
        public static final Ac.b RIGHT_MARGIN = Ac.c.a("RIGHT_MARGIN");
        public static final Ac.b BOTTOM_MARGIN = Ac.c.a("BOTTOM_MARGIN");
        public static final Ac.b PADDING = Ac.c.a("PADDING");
        public static final Ac.b LEFT_PADDING = Ac.c.a("LEFT_PADDING");
        public static final Ac.b TOP_PADDING = Ac.c.a("TOP_PADDING");
        public static final Ac.b RIGHT_PADDING = Ac.c.a("RIGHT_PADDING");
        public static final Ac.b BOTTOM_PADDING = Ac.c.a("BOTTOM_PADDING");
        public static final Ac.b PADDING_ITSELF = Ac.c.a("PADDING_ITSELF");
        public static final Ac.b LAYERS = Ac.c.a("LAYERS");
        public static final Ac.b ANCHORS = Ac.c.a("ANCHORS");
        public static final Ac.b TOP = Ac.c.a("TOP");
        public static final Ac.b BOTTOM = Ac.c.a("BOTTOM");
        public static final Ac.b CONSTRAINT = Ac.c.a("CONSTRAINT");
        public static final Ac.b LINEAR_LAYOUT = Ac.c.a("LINEAR_LAYOUT");
        public static final Ac.b WEIGHT = Ac.c.a("WEIGHT");
        public static final Ac.b SUI_CIRCULAR_MASK = Ac.c.a("SUI_CIRCULAR_MASK");
        public static final Ac.b SMOOTH = Ac.c.a("SMOOTH");
        public static final Ac.b SUI_CONSTRAINT_LAYOUT = Ac.c.a("SUI_CONSTRAINT_LAYOUT");
        public static final Ac.b SUI_CONTROLLER = Ac.c.a("SUI_CONTROLLER");
        public static final Ac.b LINK_URL = Ac.c.a("LINK_URL");
        public static final Ac.b SUI_OPEN_LINK = Ac.c.a("SUI_OPEN_LINK");
        public static final Ac.b SUI_MASK = Ac.c.a("SUI_MASK");
        public static final Ac.b KEY_NAME = Ac.c.a("KEY_NAME");
        public static final Ac.b SUI_KEY_EVENT_LISTENER = Ac.c.a("SUI_KEY_EVENT_LISTENER");
        public static final Ac.b INVERT_X = Ac.c.a("INVERT_X");
        public static final Ac.b ENABLE = Ac.c.a("ENABLE");
        public static final Ac.b GLOBAL_AXIS = Ac.c.a("GLOBAL_AXIS");
        public static final Ac.b SPHERICAL = Ac.c.a("SPHERICAL");
        public static final Ac.b INVERT_Y = Ac.c.a("INVERT_Y");
        public static final Ac.b SUI_LINEAR_LAYOUT = Ac.c.a("SUI_LINEAR_LAYOUT");
        public static final Ac.b ORIENTATION = Ac.c.a("ORIENTATION");
        public static final Ac.b VERTICAL = Ac.c.a("VERTICAL");
        public static final Ac.b HORIZONTAL = Ac.c.a("HORIZONTAL");
        public static final Ac.b SUI_PROGRESS_BAR = Ac.c.a("SUI_PROGRESS_BAR");
        public static final Ac.b INVERT = Ac.c.a("INVERT");
        public static final Ac.b VISIBLE = Ac.c.a("VISIBLE");
        public static final Ac.b AUTOMATIC_VALUE = Ac.c.a("AUTOMATIC_VALUE");
        public static final Ac.b VARIABLE_TYPE = Ac.c.a("VARIABLE_TYPE");
        public static final Ac.b EDIT_VARIABLE = Ac.c.a("EDIT_VARIABLE");
        public static final Ac.b CONCLUDE = Ac.c.a("CONCLUDE");
        public static final Ac.b ARE_YOU_SURE_YOU_WOULD_LIKE_DELETE = Ac.c.a("ARE_YOU_SURE_YOU_WOULD_LIKE_DELETE");
        public static final Ac.b NAME_EMPTY = Ac.c.a("NAME_EMPTY");
        public static final Ac.b THE_FIRST_LETTER_MUST_ALPHABETIC_LETTER = Ac.c.a("THE_FIRST_LETTER_MUST_ALPHABETIC_LETTER");
        public static final Ac.b NAME_ALREADY_USE_ANOTHER_VARIABLE = Ac.c.a("NAME_ALREADY_USE_ANOTHER_VARIABLE");
        public static final Ac.b AUTO_WIRED = Ac.c.a("AUTO_WIRED");
        public static final Ac.b SINGLETON = Ac.c.a("SINGLETON");
        public static final Ac.b UNFIXED = Ac.c.a("UNFIXED");
        public static final Ac.b TO_LEFT_OF = Ac.c.a("TO_LEFT_OF");
        public static final Ac.b TO_RIGHT_OF = Ac.c.a("TO_RIGHT_OF");
        public static final Ac.b TO_TOP_OF = Ac.c.a("TO_TOP_OF");
        public static final Ac.b TO_BOTTOM_OF = Ac.c.a("TO_BOTTOM_OF");
        public static final Ac.b BOTH = Ac.c.a("BOTH");
        public static final Ac.b SCROLL = Ac.c.a("SCROLL");
        public static final Ac.b SCROLL_X = Ac.c.a("SCROLL_X");
        public static final Ac.b SCROLL_Y = Ac.c.a("SCROLL_Y");
        public static final Ac.b SUI_SCROLL_VIEW = Ac.c.a("SUI_SCROLL_VIEW");
        public static final Ac.b START = Ac.c.a("START");
        public static final Ac.b FADE = Ac.c.a("FADE");
        public static final Ac.b DIRECTIONS = Ac.c.a("DIRECTIONS");
        public static final Ac.b QUALITY = Ac.c.a("QUALITY");
        public static final Ac.b STRENGTH = Ac.c.a("STRENGTH");
        public static final Ac.b THRESHOLD = Ac.c.a("THRESHOLD");
        public static final Ac.b BLUR_RADIUS = Ac.c.a("BLUR_RADIUS");
        public static final Ac.b OPACITY = Ac.c.a("OPACITY");
        public static final Ac.b FALLOFF = Ac.c.a("FALLOFF");
        public static final Ac.b DESATURATION = Ac.c.a("DESATURATION");
        public static final Ac.b COLOR_BLEED = Ac.c.a("COLOR_BLEED");
        public static final Ac.b SCANLINE_STRENGTH = Ac.c.a("SCANLINE_STRENGTH");
        public static final Ac.b DISTORTION = Ac.c.a("DISTORTION");
        public static final Ac.b NOISE_STRENGTH = Ac.c.a("NOISE_STRENGTH");
        public static final Ac.b TRACKING_STRENGTH = Ac.c.a("TRACKING_STRENGTH");
        public static final Ac.b TRACKING_BAND_HEIGHT = Ac.c.a("TRACKING_BAND_HEIGHT");
        public static final Ac.b TRACKING_SPEED = Ac.c.a("TRACKING_SPEED");
        public static final Ac.b TRACKING_NOISE = Ac.c.a("TRACKING_NOISE");
        public static final Ac.b SHARPEN_STRENGTH = Ac.c.a("SHARPEN_STRENGTH");
        public static final Ac.b EDGE_THRESHOLD = Ac.c.a("EDGE_THRESHOLD");
        public static final Ac.b THICKNESS = Ac.c.a("THICKNESS");
        public static final Ac.b OUTLINE_COLOR = Ac.c.a("OUTLINE_COLOR");
        public static final Ac.b MID_POINT = Ac.c.a("MID_POINT");
        public static final Ac.b ROUNDNESS = Ac.c.a("ROUNDNESS");
        public static final Ac.b FEATHER = Ac.c.a("FEATHER");
        public static final Ac.b PIVOT = Ac.c.a("PIVOT");
        public static final Ac.b FOV = Ac.c.a("FOV");
        public static final Ac.b UI_POST_PROCESSING = Ac.c.a("UI_POST_PROCESSING");
        public static final Ac.b TONEMAPPER = Ac.c.a("TONEMAPPER");
        public static final Ac.b LOW_PASS_FILTER = Ac.c.a("LOW_PASS_FILTER");
        public static final Ac.b UPSAMPLING = Ac.c.a("UPSAMPLING");
        public static final Ac.b CENTER = Ac.c.a("CENTER");
        public static final Ac.b AMBIENT_LIGHT = Ac.c.a("AMBIENT_LIGHT");
        public static final Ac.b CLOUDS = Ac.c.a("CLOUDS");
        public static final Ac.b CUMULUS = Ac.c.a("CUMULUS");
        public static final Ac.b CIRRUS = Ac.c.a("CIRRUS");
        public static final Ac.b DENSITY = Ac.c.a("DENSITY");
        public static final Ac.b LEVEL_OF_DETAIL = Ac.c.a("LEVEL_OF_DETAIL");
        public static final Ac.b MODEL_RENDERERS = Ac.c.a("MODEL_RENDERERS");
        public static final Ac.b EFFECTS = Ac.c.a("EFFECTS");
        public static final Ac.b COLOR_BASED = Ac.c.a("COLOR_BASED");
        public static final Ac.b SPEED_BASED = Ac.c.a("SPEED_BASED");
        public static final Ac.b ALIGNMENT = Ac.c.a("ALIGNMENT");
        public static final Ac.b UV_MODE = Ac.c.a("UV_MODE");
        public static final Ac.b SOURCE = Ac.c.a("SOURCE");
        public static final Ac.b USE_AS = Ac.c.a("USE_AS");
        public static final Ac.b VOXEL = Ac.c.a("VOXEL");
        public static final Ac.b VIDEO = Ac.c.a("VIDEO");
        public static final Ac.b OUTPUT_TEXTURE = Ac.c.a("OUTPUT_TEXTURE");
        public static final Ac.b SELECTED_ANIMATION = Ac.c.a("SELECTED_ANIMATION");
        public static final Ac.b ANIMATION_SPEED = Ac.c.a("ANIMATION_SPEED");
        public static final Ac.b MISSING_ANIMATION_PLAYER = Ac.c.a("MISSING_ANIMATION_PLAYER");
        public static final Ac.b ENTER_CONDITIONS = Ac.c.a("ENTER_CONDITIONS");
        public static final Ac.b EXIT_CONDITIONS = Ac.c.a("EXIT_CONDITIONS");
        public static final Ac.b CONDITION = Ac.c.a("CONDITION");
        public static final Ac.b TRIGGER = Ac.c.a("TRIGGER");
        public static final Ac.b ALPHA_MODE_NOT_COMPATIBLE_POST_PROCESSING = Ac.c.a("ALPHA_MODE_NOT_COMPATIBLE_POST_PROCESSING");
        public static final Ac.b SEPARATOR_LINE = Ac.c.a("SEPARATOR_LINE");
        public static final Ac.b SEPARATOR_LINE_STRONG = Ac.c.a("SEPARATOR_LINE_STRONG");
        public static final Ac.b BULLET_PREFIX = Ac.c.a("BULLET_PREFIX");
        public static final Ac.b OPTIONS_AVAILABLE_ONLY_WHEN_GAME_STOPPED = Ac.c.a("OPTIONS_AVAILABLE_ONLY_WHEN_GAME_STOPPED");
        public static final Ac.b NO_NAVMESH_BAKE_FOUND_CREATE_ONE = Ac.c.a("NO_NAVMESH_BAKE_FOUND_CREATE_ONE");
        public static final Ac.b NO_CALCULATED_PATH_YET = Ac.c.a("NO_CALCULATED_PATH_YET");
        public static final Ac.b NO_TARGET_YET = Ac.c.a("NO_TARGET_YET");
        public static final Ac.b FREEZE_POSITION = Ac.c.a("FREEZE_POSITION");
        public static final Ac.b FREEZE_ROTATION = Ac.c.a("FREEZE_ROTATION");
        public static final Ac.b CAR_SETUP = Ac.c.a("CAR_SETUP");
        public static final Ac.b RIGIDBODY_SETUP = Ac.c.a("RIGIDBODY_SETUP");
        public static final Ac.b MISSING_OBJECT_TEMPLATE = Ac.c.a("MISSING_OBJECT_TEMPLATE");
        public static final Ac.b ADD_MODEL_OBJECT_AS_CHILD = Ac.c.a("ADD_MODEL_OBJECT_AS_CHILD");
        public static final Ac.b BIND_POSE = Ac.c.a("BIND_POSE");
        public static final Ac.b LUMENS = Ac.c.a("LUMENS");
        public static final Ac.b FALLOFF_RADIUS = Ac.c.a("FALLOFF_RADIUS");
        public static final Ac.b BIAS = Ac.c.a("BIAS");
        public static final Ac.b NORMAL_BIAS = Ac.c.a("NORMAL_BIAS");
        public static final Ac.b FAR_DISTANCE = Ac.c.a("FAR_DISTANCE");
        public static final Ac.b CASCADES = Ac.c.a("CASCADES");
        public static final Ac.b STABLE_CASCADES = Ac.c.a("STABLE_CASCADES");
        public static final Ac.b NO_PERMISSION_TO_RECORD_AUDIO_GRANTED = Ac.c.a("NO_PERMISSION_TO_RECORD_AUDIO_GRANTED");
        public static final Ac.b REBASE = Ac.c.a("REBASE");
        public static final Ac.b CURVES = Ac.c.a("CURVES");
        public static final Ac.b SIMPLIFY = Ac.c.a("SIMPLIFY");
        public static final Ac.b KEYBOARD_AND_MOUSE = Ac.c.a("KEYBOARD_AND_MOUSE");
        public static final Ac.b KEYBOARD_KEY = Ac.c.a("KEYBOARD_KEY");
        public static final Ac.b ART_STYLE = Ac.c.a("ART_STYLE");
        public static final Ac.b LIGHT_RAYTRACING = Ac.c.a("LIGHT_RAYTRACING");
        public static final Ac.b SOURCE_MODE = Ac.c.a("SOURCE_MODE");
        public static final Ac.b FRACTAL = Ac.c.a("FRACTAL");
        public static final Ac.b DOMAIN_WRAP = Ac.c.a("DOMAIN_WRAP");
        public static final Ac.b FRACTAL_TYPE = Ac.c.a("FRACTAL_TYPE");
        public static final Ac.b INVERT_COLORS = Ac.c.a("INVERT_COLORS");
        public static final Ac.b NOISE = Ac.c.a("NOISE");
        public static final Ac.b HUE = Ac.c.a("HUE");
        public static final Ac.b SEPIA = Ac.c.a("SEPIA");
        public static final Ac.b SHARPEN = Ac.c.a("SHARPEN");
        public static final Ac.b SKETCH = Ac.c.a("SKETCH");
        public static final Ac.b VIGNETTE = Ac.c.a("VIGNETTE");
        public static final Ac.b GAUSSIAN = Ac.c.a("GAUSSIAN");
        public static final Ac.b BOOST = Ac.c.a("BOOST");
        public static final Ac.b COLOR_DEPTH = Ac.c.a("COLOR_DEPTH");
        public static final Ac.b DEPRECATED_PREFIX = Ac.c.a("DEPRECATED_PREFIX");
        public static final Ac.b ERROR_SOMETHING_WENT_WRONG = Ac.c.a("ERROR_SOMETHING_WENT_WRONG");
        public static final Ac.b PACK_INTO_SINGLE_OBJECT = Ac.c.a("PACK_INTO_SINGLE_OBJECT");
        public static final Ac.b TRANSPARENCY_MODE = Ac.c.a("TRANSPARENCY_MODE");
        public static final Ac.b TEXTURE_FILTER = Ac.c.a("TEXTURE_FILTER");
        public static final Ac.b BONE_CORRECTION_MODE = Ac.c.a("BONE_CORRECTION_MODE");
        public static final Ac.b OPEN = Ac.c.a("OPEN");
        public static final Ac.b OPEN_WITH = Ac.c.a("OPEN_WITH");
        public static final Ac.b EDIT = Ac.c.a("EDIT");
        public static final Ac.b ATTACH = Ac.c.a("ATTACH");
        public static final Ac.b BUILD_COLLISION_VTX = Ac.c.a("BUILD_COLLISION_VTX");
        public static final Ac.b EXTRACT_ANIMATION = Ac.c.a("EXTRACT_ANIMATION");
        public static final Ac.b DELETE_UNUSED_FILES = Ac.c.a("DELETE_UNUSED_FILES");
        public static final Ac.b CREATE_PREFAB = Ac.c.a("CREATE_PREFAB");
        public static final Ac.b CREATE_POOL = Ac.c.a("CREATE_POOL");
        public static final Ac.b CREATE_CURVE_OF = Ac.c.a("CREATE_CURVE_OF");
        public static final Ac.b EXTRACT_ALL_FILES_FROM = Ac.c.a("EXTRACT_ALL_FILES_FROM");
        public static final Ac.b TO_FOLDER = Ac.c.a("TO_FOLDER");
        public static final Ac.b FILE_UNZIPPED_SUCCESSFULLY = Ac.c.a("FILE_UNZIPPED_SUCCESSFULLY");
        public static final Ac.b FILE_UNZIPPED_WITH_ERRORS = Ac.c.a("FILE_UNZIPPED_WITH_ERRORS");
        public static final Ac.b GENERATE_NORMAL_MAP = Ac.c.a("GENERATE_NORMAL_MAP");
        public static final Ac.b GENERATE_CUBEMAP = Ac.c.a("GENERATE_CUBEMAP");
        public static final Ac.b SUCCESS_GENERATING_NORMAL_MAP = Ac.c.a("SUCCESS_GENERATING_NORMAL_MAP");
        public static final Ac.b FAILED_TO_LOAD_TEXTURE = Ac.c.a("FAILED_TO_LOAD_TEXTURE");
        public static final Ac.b INVALID_STRENGTH = Ac.c.a("INVALID_STRENGTH");
        public static final Ac.b ATTACH_TO_SKINNED_MODEL_RENDERER = Ac.c.a("ATTACH_TO_SKINNED_MODEL_RENDERER");
        public static final Ac.b NO_MATERIAL_IN_MODEL_RENDERER_FOUND = Ac.c.a("NO_MATERIAL_IN_MODEL_RENDERER_FOUND");
        public static final Ac.b NO_MODEL_RENDERER_FOUND = Ac.c.a("NO_MODEL_RENDERER_FOUND");
        public static final Ac.b NO_MATERIAL_IN_SKINNED_MODEL_RENDERER_FOUND = Ac.c.a("NO_MATERIAL_IN_SKINNED_MODEL_RENDERER_FOUND");
        public static final Ac.b NO_SKINNED_MODEL_RENDERER_FOUND = Ac.c.a("NO_SKINNED_MODEL_RENDERER_FOUND");
        public static final Ac.b PLEASE_WAIT_FOR_WORLD_TO_FINISH_LOADING = Ac.c.a("PLEASE_WAIT_FOR_WORLD_TO_FINISH_LOADING");
        public static final Ac.b LOADING_WORLD_MESSAGE = Ac.c.a("LOADING_WORLD_MESSAGE");
        public static final Ac.b FAILED_TO_SAVE_CURRENT_WORLD = Ac.c.a("FAILED_TO_SAVE_CURRENT_WORLD");
        public static final Ac.b PLEASE_SELECT_ONE_OBJECT = Ac.c.a("PLEASE_SELECT_ONE_OBJECT");
        public static final Ac.b INVERT_FACE_ORIENTATION = Ac.c.a("INVERT_FACE_ORIENTATION");
        public static final Ac.b INVERTING = Ac.c.a("INVERTING");
        public static final Ac.b RECALCULATE_NORMALS = Ac.c.a("RECALCULATE_NORMALS");
        public static final Ac.b CALCULATING = Ac.c.a("CALCULATING");
        public static final Ac.b CONVERT_TO_OBJ = Ac.c.a("CONVERT_TO_OBJ");
        public static final Ac.b BUILD_CONVEX_HULL = Ac.c.a("BUILD_CONVEX_HULL");
        public static final Ac.b BUILD_DECIMATE = Ac.c.a("BUILD_DECIMATE");
        public static final Ac.b DECIMATE_PERCENTAGE = Ac.c.a("DECIMATE_PERCENTAGE");
        public static final Ac.b STARTING_MAY_TAKE_MINUTES = Ac.c.a("STARTING_MAY_TAKE_MINUTES");
        public static final Ac.b FAILED_PREFIX = Ac.c.a("FAILED_PREFIX");
        public static final Ac.b FAILED = Ac.c.a("FAILED");
        public static final Ac.b UNKNOWN_ERROR = Ac.c.a("UNKNOWN_ERROR");
        public static final Ac.b SOMETHING_WENT_WRONG = Ac.c.a("SOMETHING_WENT_WRONG");
        public static final Ac.b CANT_EXPORT_EMPTY_PACKAGE = Ac.c.a("CANT_EXPORT_EMPTY_PACKAGE");
        public static final Ac.b FAILED_TO_ZIP_PACKAGE = Ac.c.a("FAILED_TO_ZIP_PACKAGE");
        public static final Ac.b ZIP_FOLDER = Ac.c.a("ZIP_FOLDER");
        public static final Ac.b ZIP_FILES = Ac.c.a("ZIP_FILES");
        public static final Ac.b RENAME = Ac.c.a("RENAME");
        public static final Ac.b DELETE_QUESTION = Ac.c.a("DELETE_QUESTION");
        public static final Ac.b FIND_USAGES = Ac.c.a("FIND_USAGES");
        public static final Ac.b VCS = Ac.c.a("VCS");
        public static final Ac.b SHARE_TO_ANDROID = Ac.c.a("SHARE_TO_ANDROID");
        public static final Ac.b EXPLORE_META_FILES = Ac.c.a("EXPLORE_META_FILES");
        public static final Ac.b COPY_TO_WORLD_ALL_MODELS = Ac.c.a("COPY_TO_WORLD_ALL_MODELS");
        public static final Ac.b IMPORT_ALL_MODELS = Ac.c.a("IMPORT_ALL_MODELS");
        public static final Ac.b MY_PREFIX = Ac.c.a("MY_PREFIX");
        public static final Ac.b IMPORTED_OF = Ac.c.a("IMPORTED_OF");
        public static final Ac.b TOTAL_EXCLAMATION = Ac.c.a("TOTAL_EXCLAMATION");
        public static final Ac.b FILE_MENU = Ac.c.a("FILE_MENU");
        public static final Ac.b DIRECTORY_MENU = Ac.c.a("DIRECTORY_MENU");
        public static final Ac.b OBJECTS_MENU = Ac.c.a("OBJECTS_MENU");
        public static final Ac.b FILE_ICON = Ac.c.a("FILE_ICON");
        public static final Ac.b SCRIPTING_PANEL_EXTENSION = Ac.c.a("SCRIPTING_PANEL_EXTENSION");
        public static final Ac.b EXTENSIONS = Ac.c.a("EXTENSIONS");
        public static final Ac.b TERMINAL_CLI = Ac.c.a("TERMINAL_CLI");
        public static final Ac.b CLI_EXAMPLE = Ac.c.a("CLI_EXAMPLE");
        public static final Ac.b WHITE = Ac.c.a("WHITE");
        public static final Ac.b GRID = Ac.c.a("GRID");
        public static final Ac.b GRID_SNAP_ENABLED = Ac.c.a("GRID_SNAP_ENABLED");
        public static final Ac.b GRID_SNAP_DISABLED = Ac.c.a("GRID_SNAP_DISABLED");
        public static final Ac.b NAVMESH_BAKE = Ac.c.a("NAVMESH_BAKE");
        public static final Ac.b VIDEO_OUTPUT = Ac.c.a("VIDEO_OUTPUT");
        public static final Ac.b UI = Ac.c.a("UI");
        public static final Ac.b TEXT_FILES = Ac.c.a("TEXT_FILES");
        public static final Ac.b JSON = Ac.c.a("JSON");
        public static final Ac.b TXT = Ac.c.a("TXT");
        public static final Ac.b PLUGINS = Ac.c.a("PLUGINS");
        public static final Ac.b CUSTOM_PANELS = Ac.c.a("CUSTOM_PANELS");
        public static final Ac.b EMPTY_VIEW_PANEL = Ac.c.a("EMPTY_VIEW_PANEL");
        public static final Ac.b SIMPLE_VIEW_PANEL = Ac.c.a("SIMPLE_VIEW_PANEL");
        public static final Ac.b WEBVIEW_PANEL = Ac.c.a("WEBVIEW_PANEL");
        public static final Ac.b XML_LAYOUTS_PANEL = Ac.c.a("XML_LAYOUTS_PANEL");
        public static final Ac.b SCRIPT = Ac.c.a("SCRIPT");
        public static final Ac.b JAVA_RECOMMENDED = Ac.c.a("JAVA_RECOMMENDED");
        public static final Ac.b LUA = Ac.c.a("LUA");
        public static final Ac.b COMPONENT_INSPECTOR = Ac.c.a("COMPONENT_INSPECTOR");
        public static final Ac.b EMPTY_INSPECTOR = Ac.c.a("EMPTY_INSPECTOR");
        public static final Ac.b SIMPLE_VIEW_INSPECTOR = Ac.c.a("SIMPLE_VIEW_INSPECTOR");
        public static final Ac.b XML_LAYOUTS_INSPECTOR = Ac.c.a("XML_LAYOUTS_INSPECTOR");
        public static final Ac.b PYTHON_OBSOLETE = Ac.c.a("PYTHON_OBSOLETE");
        public static final Ac.b CSHARP_OBSOLETE = Ac.c.a("CSHARP_OBSOLETE");
        public static final Ac.b THERMALFLOW_OBSOLETE = Ac.c.a("THERMALFLOW_OBSOLETE");
        public static final Ac.b NODESCRIPT_OBSOLETE = Ac.c.a("NODESCRIPT_OBSOLETE");
        public static final Ac.b RENDER_TEXTURE = Ac.c.a("RENDER_TEXTURE");
        public static final Ac.b FROM_PANORAMA = Ac.c.a("FROM_PANORAMA");
        public static final Ac.b STYLE = Ac.c.a("STYLE");
        public static final Ac.b ANIMATION_GRAPH = Ac.c.a("ANIMATION_GRAPH");
        public static final Ac.b MATERIAL_SHADER = Ac.c.a("MATERIAL_SHADER");
        public static final Ac.b VFX_SHADER = Ac.c.a("VFX_SHADER");
        public static final Ac.b SHADER_GRAPH_OUTPUT_NODE_IS_UNIQUE = Ac.c.a("SHADER_GRAPH_OUTPUT_NODE_IS_UNIQUE");
        public static final Ac.b SHADER_GRAPH_MATERIAL_GRAPH_SAVED = Ac.c.a("SHADER_GRAPH_MATERIAL_GRAPH_SAVED");
        public static final Ac.b SHADER_GRAPH_MAX_TEXTURES_LIMIT_REACHED = Ac.c.a("SHADER_GRAPH_MAX_TEXTURES_LIMIT_REACHED");
        public static final Ac.b SHADER_GRAPH_INVALID_CONNECTION = Ac.c.a("SHADER_GRAPH_INVALID_CONNECTION");
        public static final Ac.b SHADER_GRAPH_INVALID_CONNECTION_CONNECT_OUTPUT_TO_INPUT = Ac.c.a("SHADER_GRAPH_INVALID_CONNECTION_CONNECT_OUTPUT_TO_INPUT");
        public static final Ac.b SHADER_GRAPH_INVALID_CONNECTION_BRANCH_NEEDS_BRANCH_INPUT = Ac.c.a("SHADER_GRAPH_INVALID_CONNECTION_BRANCH_NEEDS_BRANCH_INPUT");
        public static final Ac.b SHADER_GRAPH_INVALID_CONNECTION_OUTPUT_DOES_NOT_ACCEPT_BRANCH = Ac.c.a("SHADER_GRAPH_INVALID_CONNECTION_OUTPUT_DOES_NOT_ACCEPT_BRANCH");
        public static final Ac.b SHADER_GRAPH_INVALID_CONNECTION_ONLY_COMPARISON_BRANCH = Ac.c.a("SHADER_GRAPH_INVALID_CONNECTION_ONLY_COMPARISON_BRANCH");
        public static final Ac.b SHADER_GRAPH_CONNECTION_WOULD_CREATE_CYCLE = Ac.c.a("SHADER_GRAPH_CONNECTION_WOULD_CREATE_CYCLE");
        public static final Ac.b SHADER_GRAPH_INCOMPATIBLE_TYPE = Ac.c.a("SHADER_GRAPH_INCOMPATIBLE_TYPE");
        public static final Ac.b SHADER_GRAPH_INVALID_CONNECTION_FRAGMENT_TO_VERTEX = Ac.c.a("SHADER_GRAPH_INVALID_CONNECTION_FRAGMENT_TO_VERTEX");
        public static final Ac.b SHADER_GRAPH_CHAIN_CONTAINS_OPPOSITE_STAGE_NODE = Ac.c.a("SHADER_GRAPH_CHAIN_CONTAINS_OPPOSITE_STAGE_NODE");
        public static final Ac.b GET = Ac.c.a(FetchCoreUtils.GET_REQUEST_METHOD);
        public static final Ac.b SET = Ac.c.a("SET");
        public static final Ac.b IS = Ac.c.a("IS");
        public static final Ac.b FIND = Ac.c.a("FIND");
        public static final Ac.b DESTROY = Ac.c.a("DESTROY");
        public static final Ac.b PICK = Ac.c.a("PICK");
        public static final Ac.b SEND = Ac.c.a("SEND");
        public static final Ac.b TRACE = Ac.c.a("TRACE");
        public static final Ac.b WAIT = Ac.c.a("WAIT");
        public static final Ac.b BREAK = Ac.c.a("BREAK");
        public static final Ac.b BOOLEAN = Ac.c.a("BOOLEAN");
        public static final Ac.b BRANCH = Ac.c.a("BRANCH");
        public static final Ac.b COMPONENT = Ac.c.a("COMPONENT");
        public static final Ac.b METHOD = Ac.c.a("METHOD");
        public static final Ac.b TRANSITION = Ac.c.a("TRANSITION");
        public static final Ac.b DECOMPOSE = Ac.c.a("DECOMPOSE");
        public static final Ac.b COMPOSE = Ac.c.a("COMPOSE");
        public static final Ac.b VECTOR = Ac.c.a("VECTOR");
        public static final Ac.b DISCARD = Ac.c.a("DISCARD");
        public static final Ac.b DECIMALS = Ac.c.a("DECIMALS");
        public static final Ac.b EXISTS = Ac.c.a("EXISTS");
        public static final Ac.b ATTRIBUTE = Ac.c.a("ATTRIBUTE");
        public static final Ac.b ATTRIBUTES = Ac.c.a("ATTRIBUTES");
        public static final Ac.b ENABLED = Ac.c.a("ENABLED");
        public static final Ac.b CHILD = Ac.c.a("CHILD");
        public static final Ac.b COUNT = Ac.c.a("COUNT");
        public static final Ac.b LIST = Ac.c.a("LIST");
        public static final Ac.b IMPULSE = Ac.c.a("IMPULSE");
        public static final Ac.b GLOBAL = Ac.c.a("GLOBAL");
        public static final Ac.b GLOBAL_ATTRIBUTES = Ac.c.a("GLOBAL_ATTRIBUTES");
        public static final Ac.b LOADED = Ac.c.a("LOADED");
        public static final Ac.b MESSAGE = Ac.c.a("MESSAGE");
        public static final Ac.b TOTAL = Ac.c.a("TOTAL");
        public static final Ac.b ASYNC = Ac.c.a("ASYNC");
        public static final Ac.b EACH = Ac.c.a("EACH");
        public static final Ac.b POOLED = Ac.c.a("POOLED");
        public static final Ac.b INSTANTIATE = Ac.c.a("INSTANTIATE");
        public static final Ac.b COMPARE = Ac.c.a("COMPARE");
        public static final Ac.b TITLE = Ac.c.a("TITLE");
        public static final Ac.b META_ID = Ac.c.a("META_ID");
        public static final Ac.b MIDNIGHT = Ac.c.a("MIDNIGHT");
        public static final Ac.b NOON = Ac.c.a("NOON");
        public static final Ac.b SUNRISE = Ac.c.a("SUNRISE");
        public static final Ac.b TWILIGHT = Ac.c.a("TWILIGHT");
        public static final Ac.b FACTOR = Ac.c.a("FACTOR");
        public static final Ac.b DAY = Ac.c.a("DAY");
        public static final Ac.b NIGHT = Ac.c.a("NIGHT");
        public static final Ac.b LONGITUDE = Ac.c.a("LONGITUDE");
        public static final Ac.b DISPLACEMENT = Ac.c.a("DISPLACEMENT");
        public static final Ac.b TELEPORT = Ac.c.a("TELEPORT");
        public static final Ac.b TOUCH = Ac.c.a("TOUCH");
        public static final Ac.b TOUCHED = Ac.c.a("TOUCHED");
        public static final Ac.b AUDIO = Ac.c.a("AUDIO");
        public static final Ac.b ONCE = Ac.c.a("ONCE");
        public static final Ac.b RAY = Ac.c.a("RAY");
        public static final Ac.b BY = Ac.c.a("BY");
        public static final Ac.b TO = Ac.c.a("TO");
        public static final Ac.b BOOL = Ac.c.a("BOOL");
        public static final Ac.b FILE = Ac.c.a("FILE");
        public static final Ac.b UV = Ac.c.a("UV");
        public static final Ac.b GAME_OBJECT = Ac.c.a("GAME_OBJECT");
        public static final Ac.b SECONDS = Ac.c.a("SECONDS");
        public static final Ac.b ANGLES = Ac.c.a("ANGLES");
        public static final Ac.b METERS = Ac.c.a("METERS");
        public static final Ac.b FOUND = Ac.c.a("FOUND");
        public static final Ac.b HIT = Ac.c.a("HIT");
        public static final Ac.b FINISH = Ac.c.a("FINISH");
        public static final Ac.b BODY = Ac.c.a("BODY");
        public static final Ac.b COUNTER = Ac.c.a("COUNTER");
        public static final Ac.b HOUR = Ac.c.a("HOUR");
        public static final Ac.b MAIN = Ac.c.a("MAIN");
        public static final Ac.b QUATERNION = Ac.c.a("QUATERNION");
        public static final Ac.b TOLERANCE = Ac.c.a("TOLERANCE");
        public static final Ac.b TIME = Ac.c.a("TIME");
        public static final Ac.b DELTA = Ac.c.a("DELTA");
        public static final Ac.b TRUE = Ac.c.a("TRUE");
        public static final Ac.b FALSE = Ac.c.a("FALSE");
        public static final Ac.b IGNORE = Ac.c.a("IGNORE");
        public static final Ac.b MOVEMENT = Ac.c.a("MOVEMENT");
        public static final Ac.b KEY = Ac.c.a("KEY");
        public static final Ac.b CONTACT = Ac.c.a("CONTACT");
        public static final Ac.b OWNER = Ac.c.a("OWNER");
        public static final Ac.b PRESET = Ac.c.a("PRESET");
        public static final Ac.b SEMAPHORE = Ac.c.a("SEMAPHORE");
        public static final Ac.b FRONT = Ac.c.a("FRONT");
        public static final Ac.b BEGIN = Ac.c.a("BEGIN");
        public static final Ac.b IN = Ac.c.a("IN");
        public static final Ac.b OUT = Ac.c.a("OUT");
        public static final Ac.b FROM = Ac.c.a("FROM");
        public static final Ac.b ITEM = Ac.c.a("ITEM");
        public static final Ac.b BASE = Ac.c.a("BASE");
        public static final Ac.b GRADIENT = Ac.c.a("GRADIENT");
        public static final Ac.b THEN = Ac.c.a("THEN");
        public static final Ac.b MISSING = Ac.c.a("MISSING");
        public static final Ac.b ALLOW = Ac.c.a("ALLOW");
        public static final Ac.b ALLOW_ANIMATIONS = Ac.c.a("ALLOW_ANIMATIONS");
        public static final Ac.b TIME_OF_DAY = Ac.c.a("TIME_OF_DAY");
        public static final Ac.b BLENDING_MODE = Ac.c.a("BLENDING_MODE");
        public static final Ac.b UV_SOURCE = Ac.c.a("UV_SOURCE");
        public static final Ac.b ON_TRUE = Ac.c.a("ON_TRUE");
        public static final Ac.b ON_FALSE = Ac.c.a("ON_FALSE");
        public static final Ac.b ON_HIT = Ac.c.a("ON_HIT");
        public static final Ac.b ON_FINISH = Ac.c.a("ON_FINISH");
        public static final Ac.b LOAD_MESSAGE = Ac.c.a("LOAD_MESSAGE");
        public static final Ac.b LOAD_PERCENT = Ac.c.a("LOAD_PERCENT");
        public static final Ac.b LOAD_TOTAL = Ac.c.a("LOAD_TOTAL");
        public static final Ac.b LOADED_COUNT = Ac.c.a("LOADED_COUNT");
        public static final Ac.b DELTA_TIME = Ac.c.a("DELTA_TIME");
        public static final Ac.b SMOOTH_DELTA = Ac.c.a("SMOOTH_DELTA");
        public static final Ac.b SIN_TIME = Ac.c.a("SIN_TIME");
        public static final Ac.b COS_TIME = Ac.c.a("COS_TIME");
        public static final Ac.b SQRT_DISTANCE = Ac.c.a("SQRT_DISTANCE");
        public static final Ac.b FLIP_FLOP = Ac.c.a("FLIP_FLOP");
        public static final Ac.b TRACE_RAY_OBJECT = Ac.c.a("TRACE_RAY_OBJECT");
        public static final Ac.b TRACE_RAY_POINT = Ac.c.a("TRACE_RAY_POINT");
        public static final Ac.b IS_A = Ac.c.a("IS_A");
        public static final Ac.b ON_EVENT = Ac.c.a("ON_EVENT");
        public static final Ac.b IN_FRONT = Ac.c.a("IN_FRONT");
        public static final Ac.b SET_AS = Ac.c.a("SET_AS");
        public static final Ac.b SET_AS_CUBIC_SKYBOX = Ac.c.a("SET_AS_CUBIC_SKYBOX");
        public static final Ac.b SET_AS_PANORAMA_SKYBOX = Ac.c.a("SET_AS_PANORAMA_SKYBOX");
        public static final Ac.b SELL_AT_STORE = Ac.c.a("SELL_AT_STORE");
        public static final Ac.b EDIT_ON_VISION = Ac.c.a("EDIT_ON_VISION");
        public static final Ac.b NORMAL_MAP_GENERATOR = Ac.c.a("NORMAL_MAP_GENERATOR");
        public static final Ac.b OPS = Ac.c.a("OPS");
        public static final Ac.b OK = Ac.c.a("OK");
        public static final Ac.b BUILDING = Ac.c.a("BUILDING");
        public static final Ac.b CONTRAST = Ac.c.a("CONTRAST");
        public static final Ac.b BRIGHTNESS = Ac.c.a("BRIGHTNESS");
        public static final Ac.b SATURATION = Ac.c.a("SATURATION");
        public static final Ac.b BLEND = Ac.c.a("BLEND");
        public static final Ac.b SUBTRACTIVE = Ac.c.a("SUBTRACTIVE");
        public static final Ac.b RADIAL_LENGTH = Ac.c.a("RADIAL_LENGTH");
        public static final Ac.b IMAGE_BRIGHTNESS = Ac.c.a("IMAGE_BRIGHTNESS");
        public static final Ac.b FLARE_BRIGHTNESS = Ac.c.a("FLARE_BRIGHTNESS");
        public static final Ac.b PERCENTAGE = Ac.c.a("PERCENTAGE");
        public static final Ac.b FIXED_RESOLUTION = Ac.c.a("FIXED_RESOLUTION");
        public static final Ac.b FREE_ASPECT_RESOLUTION = Ac.c.a("FREE_ASPECT_RESOLUTION");
        public static final Ac.b SKYBOX = Ac.c.a("SKYBOX");
        public static final Ac.b SOLID_COLOR = Ac.c.a("SOLID_COLOR");
        public static final Ac.b AMBIENT_COLOR = Ac.c.a("AMBIENT_COLOR");
        public static final Ac.b INDIRECT_LIGHT = Ac.c.a("INDIRECT_LIGHT");
        public static final Ac.b TONE_MAP = Ac.c.a("TONE_MAP");
        public static final Ac.b SLOPE = Ac.c.a("SLOPE");
        public static final Ac.b TOE = Ac.c.a("TOE");
        public static final Ac.b SHOULDER = Ac.c.a("SHOULDER");
        public static final Ac.b BLACKCLIP = Ac.c.a("BLACKCLIP");
        public static final Ac.b WHITECLIP = Ac.c.a("WHITECLIP");
        public static final Ac.b ACES = Ac.c.a("ACES");
        public static final Ac.b UNCHARTED2 = Ac.c.a("UNCHARTED2");
        public static final Ac.b SHADER = Ac.c.a("SHADER");
        public static final Ac.b CUBIC = Ac.c.a("CUBIC");
        public static final Ac.b ATMOSPHERIC = Ac.c.a("ATMOSPHERIC");
        public static final Ac.b SPACE_COLOR = Ac.c.a("SPACE_COLOR");
        public static final Ac.b TEXTURE_COLOR = Ac.c.a("TEXTURE_COLOR");
        public static final Ac.b RAY_COLOR = Ac.c.a("RAY_COLOR");
        public static final Ac.b ENABLE_CUMULUS_CLOUDS = Ac.c.a("ENABLE_CUMULUS_CLOUDS");
        public static final Ac.b ENABLE_CIRRUS_CLOUDS = Ac.c.a("ENABLE_CIRRUS_CLOUDS");
        public static final Ac.b WETNESS = Ac.c.a("WETNESS");
        public static final Ac.b ATMOSPHERE_DENSITY = Ac.c.a("ATMOSPHERE_DENSITY");
        public static final Ac.b ATMOSPHERE_DENSITY_FALLOFF = Ac.c.a("ATMOSPHERE_DENSITY_FALLOFF");
        public static final Ac.b ATMOSPHERE_EXTENT = Ac.c.a("ATMOSPHERE_EXTENT");
        public static final Ac.b SIMULATION_SPEED = Ac.c.a("SIMULATION_SPEED");
        public static final Ac.b FOG_COLOR = Ac.c.a("FOG_COLOR");
        public static final Ac.b FOG_START = Ac.c.a("FOG_START");
        public static final Ac.b FOG_END = Ac.c.a("FOG_END");
        public static final Ac.b FOG_TYPE = Ac.c.a("FOG_TYPE");
        public static final Ac.b FAST = Ac.c.a("FAST");
        public static final Ac.b LEVEL = Ac.c.a("LEVEL");
        public static final Ac.b LIMIT_EXCEEDED_PANEL_LIMIT = Ac.c.a("LIMIT_EXCEEDED_PANEL_LIMIT");
        public static final Ac.b LIMIT_EXCEEDED_PANEL_VIP_TEXT = Ac.c.a("LIMIT_EXCEEDED_PANEL_VIP_TEXT");
        public static final Ac.b ALREADY_HAVE_ACCOUNT_TEXT = Ac.c.a("ALREADY_HAVE_ACCOUNT_TEXT");
        public static final Ac.b DONT_HAVE_ACCOUNT_TEXT = Ac.c.a("DONT_HAVE_ACCOUNT_TEXT");
        public static final Ac.b LOGIN_WITH_GOOGLE = Ac.c.a("LOGIN_WITH_GOOGLE");
        public static final Ac.b LOGIN_WITH_GOOGLE_SUB = Ac.c.a("LOGIN_WITH_GOOGLE_SUB");
        public static final Ac.b LOG_IN = Ac.c.a("LOG_IN");
        public static final Ac.b REGISTER_NOW = Ac.c.a("REGISTER_NOW");
        public static final Ac.b VALID_EMAIL_FOR_CONFIRMATION = Ac.c.a("VALID_EMAIL_FOR_CONFIRMATION");
        public static final Ac.b FINALIZE = Ac.c.a("FINALIZE");
        public static final Ac.b ACCOUNT_ITSMAGIC = Ac.c.a("ACCOUNT_ITSMAGIC");
        public static final Ac.b ACCESS_ACCOUNT = Ac.c.a("ACCESS_ACCOUNT");
        public static final Ac.b REGISTER_NEW_ACCOUNT = Ac.c.a("REGISTER_NEW_ACCOUNT");
        public static final Ac.b UNWANTED_CHARACTERS = Ac.c.a("UNWANTED_CHARACTERS");
        public static final Ac.b INVALID_EMAIL_WARNING = Ac.c.a("INVALID_EMAIL_WARNING");
        public static final Ac.b REGISTER_TERMS_AND_CONDITIONS_REJECTED = Ac.c.a("REGISTER_TERMS_AND_CONDITIONS_REJECTED");
        public static final Ac.b SYNC_GOOGLE_TEXT1 = Ac.c.a("SYNC_GOOGLE_TEXT1");
        public static final Ac.b SYNC_GOOGLE_TEXT2 = Ac.c.a("SYNC_GOOGLE_TEXT2");
        public static final Ac.b SYNC_GOOGLE_BUTTON = Ac.c.a("SYNC_GOOGLE_BUTTON");
        public static final Ac.b LIFE_TIME = Ac.c.a("LIFE_TIME");
        public static final Ac.b PURCHASE = Ac.c.a("PURCHASE");
        public static final Ac.b RECOMMENDED = Ac.c.a("RECOMMENDED");
        public static final Ac.b PAY_ONLY_TIME_USE_TITTLE = Ac.c.a("PAY_ONLY_TIME_USE_TITTLE");
        public static final Ac.b VIP_FOREVER_TITTLE = Ac.c.a("VIP_FOREVER_TITTLE");
        public static final Ac.b LOADING = Ac.c.a("LOADING");
        public static final Ac.b LOADING_EDITOR = Ac.c.a("LOADING_EDITOR");
        public static final Ac.b LOADING_PROJECT = Ac.c.a("LOADING_PROJECT");
        public static final Ac.b CREATING_PROJECT = Ac.c.a("CREATING_PROJECT");
        public static final Ac.b CHECKING_ASSETS = Ac.c.a("CHECKING_ASSETS");
        public static final Ac.b PREPARING_REQUIRED_ASSETS = Ac.c.a("PREPARING_REQUIRED_ASSETS");
        public static final Ac.b PREPARING_ASSETS = Ac.c.a("PREPARING_ASSETS");
        public static final Ac.b DOWNLOADING_REQUIRED_ASSETS = Ac.c.a("DOWNLOADING_REQUIRED_ASSETS");
        public static final Ac.b DOWNLOADING_ASSETS = Ac.c.a("DOWNLOADING_ASSETS");
        public static final Ac.b EXTRACTING_ASSETS = Ac.c.a("EXTRACTING_ASSETS");
        public static final Ac.b CACHING_MATERIALS = Ac.c.a("CACHING_MATERIALS");
        public static final Ac.b COMPILING_SHADERS = Ac.c.a("COMPILING_SHADERS");
        public static final Ac.b MISSING_PAD_MANIFEST_FILE = Ac.c.a("MISSING_PAD_MANIFEST_FILE");
        public static final Ac.b BUILDING_TABLES = Ac.c.a("BUILDING_TABLES");
        public static final Ac.b CHECKING_FILES = Ac.c.a("CHECKING_FILES");
        public static final Ac.b CHECKING_INVALID_FILES = Ac.c.a("CHECKING_INVALID_FILES");
        public static final Ac.b CHECKING_TEXTURES = Ac.c.a("CHECKING_TEXTURES");
        public static final Ac.b IMPORTING_TEXTURES = Ac.c.a("IMPORTING_TEXTURES");
        public static final Ac.b COMPRESSING = Ac.c.a("COMPRESSING");
        public static final Ac.b CHECKING_JAVA_FILES = Ac.c.a("CHECKING_JAVA_FILES");
        public static final Ac.b REPLACING_FILES = Ac.c.a("REPLACING_FILES");
        public static final Ac.b LOADING_WORLD = Ac.c.a("LOADING_WORLD");
        public static final Ac.b PREPARING_PROJECT = Ac.c.a("PREPARING_PROJECT");
        public static final Ac.b INSTALLING_JAVA = Ac.c.a("INSTALLING_JAVA");
        public static final Ac.b DOWNLOADING_TEMPLATE = Ac.c.a("DOWNLOADING_TEMPLATE");
        public static final Ac.b IMPORTING_TEMPLATE = Ac.c.a("IMPORTING_TEMPLATE");
        public static final Ac.b DOWNLOAD_TEMPLATE_RETRYING = Ac.c.a("DOWNLOAD_TEMPLATE_RETRYING");
        public static final Ac.b DOWNLOAD_TEMPLATE_RETRY_WAIT = Ac.c.a("DOWNLOAD_TEMPLATE_RETRY_WAIT");
        public static final Ac.b DOWNLOAD_TEMPLATE_RETRY_FAILED = Ac.c.a("DOWNLOAD_TEMPLATE_RETRY_FAILED");
        public static final Ac.b ERROR_PREFIX = Ac.c.a("ERROR_PREFIX");
        public static final Ac.b ERROR_NO_INTERNET_CONNECTION = Ac.c.a("ERROR_NO_INTERNET_CONNECTION");
        public static final Ac.b FAILED_TO_DELETE_VULKAN_CACHE = Ac.c.a("FAILED_TO_DELETE_VULKAN_CACHE");
        public static final Ac.b DONE = Ac.c.a("DONE");
        public static final Ac.b VIP_FREE = Ac.c.a("VIP_FREE");
        public static final Ac.b CHEAP = Ac.c.a("CHEAP");
        public static final Ac.b ONE_WEEK = Ac.c.a("ONE_WEEK");
        public static final Ac.b LOGIN_BECOME_VIP_MEMBER = Ac.c.a("LOGIN_BECOME_VIP_MEMBER");
        public static final Ac.b OR = Ac.c.a("OR");
        public static final Ac.b FUNDS = Ac.c.a("FUNDS");
        public static final Ac.b COINS = Ac.c.a("COINS");
        public static final Ac.b USED_HOURS = Ac.c.a("USED_HOURS");
        public static final Ac.b USER_STATS = Ac.c.a("USER_STATS");
        public static final Ac.b ALL = Ac.c.a("ALL");
        public static final Ac.b GENERICS = Ac.c.a("GENERICS");
        public static final Ac.b COMPONENTS = Ac.c.a("COMPONENTS");
        public static final Ac.b ANNOTATIONS = Ac.c.a("ANNOTATIONS");
        public static final Ac.b CATEGORIES = Ac.c.a("CATEGORIES");
        public static final Ac.b FILTER = Ac.c.a("FILTER");
        public static final Ac.b MY_CLASSES = Ac.c.a("MY_CLASSES");
        public static final Ac.b ENGINE_CLASSES = Ac.c.a("ENGINE_CLASSES");
        public static final Ac.b TYPES = Ac.c.a("TYPES");
        public static final Ac.b SEARCH = Ac.c.a("SEARCH");
        public static final Ac.b OPEN_DOC = Ac.c.a("OPEN_DOC");
        public static final Ac.b COPIED = Ac.c.a("COPIED");
        public static final Ac.b NOT_INSTALLED_ITSMAGIC_VISION = Ac.c.a("NOT_INSTALLED_ITSMAGIC_VISION");
        public static final Ac.b INSTALL_TO_IMPORT_OR_EDIT_MODELS = Ac.c.a("INSTALL_TO_IMPORT_OR_EDIT_MODELS");
        public static final Ac.b VISION_THE_MODULE_RESPONSIBLE_FOR_THIS = Ac.c.a("VISION_THE_MODULE_RESPONSIBLE_FOR_THIS");
        public static final Ac.b OPEN_PLAYSTORE = Ac.c.a("OPEN_PLAYSTORE");
        public static final Ac.b CREATE_PROJECT = Ac.c.a("CREATE_PROJECT");
        public static final Ac.b IMAGES = Ac.c.a("IMAGES");
        public static final Ac.b READ_MORE = Ac.c.a("READ_MORE");
        public static final Ac.b READ_LESS = Ac.c.a("READ_LESS");
        public static final Ac.b NATURE = Ac.c.a("NATURE");
        public static final Ac.b TREES = Ac.c.a("TREES");
        public static final Ac.b ROCKS = Ac.c.a("ROCKS");
        public static final Ac.b STONES = Ac.c.a("STONES");
        public static final Ac.b WOOD = Ac.c.a("WOOD");
        public static final Ac.b HOUSES = Ac.c.a("HOUSES");
        public static final Ac.b GUNS = Ac.c.a("GUNS");
        public static final Ac.b WEAPONS = Ac.c.a("WEAPONS");
        public static final Ac.b FOOD = Ac.c.a("FOOD");
        public static final Ac.b FURNITURE = Ac.c.a("FURNITURE");
        public static final Ac.b PRIMITIVES = Ac.c.a("PRIMITIVES");
        public static final Ac.b MORE_PERFORMANCE_LESS_LAG = Ac.c.a("MORE_PERFORMANCE_LESS_LAG");
        public static final Ac.b ACTIVATE_SHADOWS = Ac.c.a("ACTIVATE_SHADOWS");
        public static final Ac.b MATCAPS = Ac.c.a("MATCAPS");
        public static final Ac.b PREBUILT_PBR_MATERIALS = Ac.c.a("PREBUILT_PBR_MATERIALS");
        public static final Ac.b ALLOWS_CREATE_CUSTOM_SHADERS = Ac.c.a("ALLOWS_CREATE_CUSTOM_SHADERS");
        public static final Ac.b PBR_SHADERS = Ac.c.a("PBR_SHADERS");
        public static final Ac.b NORMALMAP_GENERATOR = Ac.c.a("NORMALMAP_GENERATOR");
        public static final Ac.b RAYTRACING_BAKE_GENERATOR = Ac.c.a("RAYTRACING_BAKE_GENERATOR");
        public static final Ac.b CAMERA_FILTERS = Ac.c.a("CAMERA_FILTERS");
        public static final Ac.b CUSTOM_CAMERA_FILTERS = Ac.c.a("CUSTOM_CAMERA_FILTERS");
        public static final Ac.b NO_SCRIPTS_LIMIT = Ac.c.a("NO_SCRIPTS_LIMIT");
        public static final Ac.b NO_PROJECTS_LIMIT = Ac.c.a("NO_PROJECTS_LIMIT");
        public static final Ac.b NO_2_EXPORTATION_PER_WEEK_LIMIT = Ac.c.a("NO_2_EXPORTATION_PER_WEEK_LIMIT");
        public static final Ac.b NO_TEXTURE_SIZE_LIMIT = Ac.c.a("NO_TEXTURE_SIZE_LIMIT");
        public static final Ac.b NO_LIGHT_LIMIT_PER_WORLD = Ac.c.a("NO_LIGHT_LIMIT_PER_WORLD");
        public static final Ac.b NO_HPOP_LIMIT_PER_WORLD = Ac.c.a("NO_HPOP_LIMIT_PER_WORLD");
        public static final Ac.b NO_TERRAIN_LIMIT_PER_WORLD = Ac.c.a("NO_TERRAIN_LIMIT_PER_WORLD");
        public static final Ac.b NO_PARTICLES_LIMIT_PER_WORLD = Ac.c.a("NO_PARTICLES_LIMIT_PER_WORLD");
        public static final Ac.b NO_ROADS_LIMIT_PER_WORLD = Ac.c.a("NO_ROADS_LIMIT_PER_WORLD");
        public static final Ac.b PLEASE_WAIT_SCRIPTS_COMPILER_FINISH = Ac.c.a("PLEASE_WAIT_SCRIPTS_COMPILER_FINISH");
        public static final Ac.b OR_VIP = Ac.c.a("OR_VIP");
        public static final Ac.b NOCODE_ON_FORWARD_SPEED = Ac.c.a("NOCODE_ON_FORWARD_SPEED");
        public static final Ac.b NOCODE_ABS = Ac.c.a("NOCODE_ABS");
        public static final Ac.b NOCODE_ADD = Ac.c.a("NOCODE_ADD");
        public static final Ac.b NOCODE_ADD_LIST_ELEMENT = Ac.c.a("NOCODE_ADD_LIST_ELEMENT");
        public static final Ac.b NOCODE_ARCCOSINE = Ac.c.a("NOCODE_ARCCOSINE");
        public static final Ac.b NOCODE_ARCSINE = Ac.c.a("NOCODE_ARCSINE");
        public static final Ac.b NOCODE_ARCTANGENT = Ac.c.a("NOCODE_ARCTANGENT");
        public static final Ac.b NOCODE_ATTRIBUTE_ACCESS = Ac.c.a("NOCODE_ATTRIBUTE_ACCESS");
        public static final Ac.b NOCODE_BLEND = Ac.c.a("NOCODE_BLEND");
        public static final Ac.b NOCODE_BRANCH = Ac.c.a("NOCODE_BRANCH");
        public static final Ac.b NOCODE_BREAK = Ac.c.a("NOCODE_BREAK");
        public static final Ac.b NOCODE_CEIL = Ac.c.a("NOCODE_CEIL");
        public static final Ac.b NOCODE_CLAMP = Ac.c.a("NOCODE_CLAMP");
        public static final Ac.b NOCODE_CLAMP_01 = Ac.c.a("NOCODE_CLAMP_01");
        public static final Ac.b NOCODE_CLEAR_LIST = Ac.c.a("NOCODE_CLEAR_LIST");
        public static final Ac.b NOCODE_COLLISION_DECOMPOSE = Ac.c.a("NOCODE_COLLISION_DECOMPOSE");
        public static final Ac.b NOCODE_COLOR_BLEND = Ac.c.a("NOCODE_COLOR_BLEND");
        public static final Ac.b NOCODE_COLOR_TRANSITION = Ac.c.a("NOCODE_COLOR_TRANSITION");
        public static final Ac.b NOCODE_COMPARE_NAME_BRANCH = Ac.c.a("NOCODE_COMPARE_NAME_BRANCH");
        public static final Ac.b NOCODE_COMPARE_TAG_BRANCH = Ac.c.a("NOCODE_COMPARE_TAG_BRANCH");
        public static final Ac.b NOCODE_COMPONENT_METHOD = Ac.c.a("NOCODE_COMPONENT_METHOD");
        public static final Ac.b NOCODE_CONTACT_DECOMPOSE = Ac.c.a("NOCODE_CONTACT_DECOMPOSE");
        public static final Ac.b NOCODE_COS = Ac.c.a("NOCODE_COS");
        public static final Ac.b NOCODE_COS_TIME = Ac.c.a("NOCODE_COS_TIME");
        public static final Ac.b NOCODE_CROSS = Ac.c.a("NOCODE_CROSS");
        public static final Ac.b NOCODE_CUSTOM_EVENT = Ac.c.a("NOCODE_CUSTOM_EVENT");
        public static final Ac.b NOCODE_CUSTOM_EVENT_BOOL = Ac.c.a("NOCODE_CUSTOM_EVENT_BOOL");
        public static final Ac.b NOCODE_CUSTOM_EVENT_NUMBER = Ac.c.a("NOCODE_CUSTOM_EVENT_NUMBER");
        public static final Ac.b NOCODE_CUSTOM_EVENT_TEXT = Ac.c.a("NOCODE_CUSTOM_EVENT_TEXT");
        public static final Ac.b NOCODE_DELTA_TIME = Ac.c.a("NOCODE_DELTA_TIME");
        public static final Ac.b NOCODE_DESTROY_COMPONENT = Ac.c.a("NOCODE_DESTROY_COMPONENT");
        public static final Ac.b NOCODE_DESTROY_OBJECT = Ac.c.a("NOCODE_DESTROY_OBJECT");
        public static final Ac.b NOCODE_DISCARD_DECIMALS = Ac.c.a("NOCODE_DISCARD_DECIMALS");
        public static final Ac.b NOCODE_DISTANCE = Ac.c.a("NOCODE_DISTANCE");
        public static final Ac.b NOCODE_DOT = Ac.c.a("NOCODE_DOT");
        public static final Ac.b NOCODE_EQUAL = Ac.c.a("NOCODE_EQUAL");
        public static final Ac.b NOCODE_EULER_DECOMPOSE = Ac.c.a("NOCODE_EULER_DECOMPOSE");
        public static final Ac.b NOCODE_EULER_ROTATION = Ac.c.a("NOCODE_EULER_ROTATION");
        public static final Ac.b NOCODE_EXP = Ac.c.a("NOCODE_EXP");
        public static final Ac.b NOCODE_FIND_CHILD_OBJECT = Ac.c.a("NOCODE_FIND_CHILD_OBJECT");
        public static final Ac.b NOCODE_FIND_LIST_ELEMENT_INDEX = Ac.c.a("NOCODE_FIND_LIST_ELEMENT_INDEX");
        public static final Ac.b NOCODE_FIND_OBJECT = Ac.c.a("NOCODE_FIND_OBJECT");
        public static final Ac.b NOCODE_FIRST_WINS = Ac.c.a("NOCODE_FIRST_WINS");
        public static final Ac.b NOCODE_FLIP_FLOP = Ac.c.a("NOCODE_FLIP_FLOP");
        public static final Ac.b NOCODE_FLOOR = Ac.c.a("NOCODE_FLOOR");
        public static final Ac.b NOCODE_FRAC = Ac.c.a("NOCODE_FRAC");
        public static final Ac.b NOCODE_GET_ALLOW_ANIMATIONS = Ac.c.a("NOCODE_GET_ALLOW_ANIMATIONS");
        public static final Ac.b NOCODE_GET_AXIS = Ac.c.a("NOCODE_GET_AXIS");
        public static final Ac.b NOCODE_GET_BACK = Ac.c.a("NOCODE_GET_BACK");
        public static final Ac.b NOCODE_GET_CHILD_BY_INDEX = Ac.c.a("NOCODE_GET_CHILD_BY_INDEX");
        public static final Ac.b NOCODE_GET_CHILD_COUNT = Ac.c.a("NOCODE_GET_CHILD_COUNT");
        public static final Ac.b NOCODE_GET_COLLISION_COLLIDER = Ac.c.a("NOCODE_GET_COLLISION_COLLIDER");
        public static final Ac.b NOCODE_GET_COLLISION_COLLIDER_OBJECT = Ac.c.a("NOCODE_GET_COLLISION_COLLIDER_OBJECT");
        public static final Ac.b NOCODE_GET_COLLISION_CONTACT_AT = Ac.c.a("NOCODE_GET_COLLISION_CONTACT_AT");
        public static final Ac.b NOCODE_GET_COLLISION_CONTACT_COUNT = Ac.c.a("NOCODE_GET_COLLISION_CONTACT_COUNT");
        public static final Ac.b NOCODE_GET_COLLISION_CONTACT_LIST = Ac.c.a("NOCODE_GET_COLLISION_CONTACT_LIST");
        public static final Ac.b NOCODE_GET_COLLISION_OBJECT = Ac.c.a("NOCODE_GET_COLLISION_OBJECT");
        public static final Ac.b NOCODE_GET_COLLISION_PHYSICS_COMPONENT = Ac.c.a("NOCODE_GET_COLLISION_PHYSICS_COMPONENT");
        public static final Ac.b NOCODE_GET_COMPONENT_ENABLED = Ac.c.a("NOCODE_GET_COMPONENT_ENABLED");
        public static final Ac.b NOCODE_GET_COMPONENT_OBJECT = Ac.c.a("NOCODE_GET_COMPONENT_OBJECT");
        public static final Ac.b NOCODE_GET_COMPONENT_TITLE = Ac.c.a("NOCODE_GET_COMPONENT_TITLE");
        public static final Ac.b NOCODE_GET_CONTACT_COLLIDER = Ac.c.a("NOCODE_GET_CONTACT_COLLIDER");
        public static final Ac.b NOCODE_GET_CONTACT_COLLIDER_OBJECT = Ac.c.a("NOCODE_GET_CONTACT_COLLIDER_OBJECT");
        public static final Ac.b NOCODE_GET_CONTACT_DISTANCE = Ac.c.a("NOCODE_GET_CONTACT_DISTANCE");
        public static final Ac.b NOCODE_GET_CONTACT_IMPULSE = Ac.c.a("NOCODE_GET_CONTACT_IMPULSE");
        public static final Ac.b NOCODE_GET_CONTACT_NORMAL = Ac.c.a("NOCODE_GET_CONTACT_NORMAL");
        public static final Ac.b NOCODE_GET_CONTACT_POINT = Ac.c.a("NOCODE_GET_CONTACT_POINT");
        public static final Ac.b NOCODE_GET_DONT_DESTROY_ON_LOAD = Ac.c.a("NOCODE_GET_DONT_DESTROY_ON_LOAD");
        public static final Ac.b NOCODE_GET_DOWN = Ac.c.a("NOCODE_GET_DOWN");
        public static final Ac.b NOCODE_GET_FIRST_LIST_ELEMENT = Ac.c.a("NOCODE_GET_FIRST_LIST_ELEMENT");
        public static final Ac.b NOCODE_GET_FORWARD = Ac.c.a("NOCODE_GET_FORWARD");
        public static final Ac.b NOCODE_GET_FORWARD_SPEED = Ac.c.a("NOCODE_GET_FORWARD_SPEED");
        public static final Ac.b NOCODE_GET_GLOBAL_POSITION = Ac.c.a("NOCODE_GET_GLOBAL_POSITION");
        public static final Ac.b NOCODE_GET_GLOBAL_ROTATION = Ac.c.a("NOCODE_GET_GLOBAL_ROTATION");
        public static final Ac.b NOCODE_GET_GLOBAL_SCALE = Ac.c.a("NOCODE_GET_GLOBAL_SCALE");
        public static final Ac.b NOCODE_GET_LAST_LIST_ELEMENT = Ac.c.a("NOCODE_GET_LAST_LIST_ELEMENT");
        public static final Ac.b NOCODE_GET_LEFT = Ac.c.a("NOCODE_GET_LEFT");
        public static final Ac.b NOCODE_GET_LIST_COUNT = Ac.c.a("NOCODE_GET_LIST_COUNT");
        public static final Ac.b NOCODE_GET_LIST_ELEMENT_AT = Ac.c.a("NOCODE_GET_LIST_ELEMENT_AT");
        public static final Ac.b NOCODE_GET_LOAD_MESSAGE = Ac.c.a("NOCODE_GET_LOAD_MESSAGE");
        public static final Ac.b NOCODE_GET_LOAD_PERCENT = Ac.c.a("NOCODE_GET_LOAD_PERCENT");
        public static final Ac.b NOCODE_GET_LOAD_TOTAL = Ac.c.a("NOCODE_GET_LOAD_TOTAL");
        public static final Ac.b NOCODE_GET_LOADED_COUNT = Ac.c.a("NOCODE_GET_LOADED_COUNT");
        public static final Ac.b NOCODE_GET_MAIN_PARENT = Ac.c.a("NOCODE_GET_MAIN_PARENT");
        public static final Ac.b NOCODE_GET_MATERIAL_COLOR = Ac.c.a("NOCODE_GET_MATERIAL_COLOR");
        public static final Ac.b NOCODE_GET_META_ID = Ac.c.a("NOCODE_GET_META_ID");
        public static final Ac.b NOCODE_GET_MIDNIGHT_FACTOR = Ac.c.a("NOCODE_GET_MIDNIGHT_FACTOR");
        public static final Ac.b NOCODE_GET_MOVEMENT_SPEED = Ac.c.a("NOCODE_GET_MOVEMENT_SPEED");
        public static final Ac.b NOCODE_GET_NAME = Ac.c.a("NOCODE_GET_NAME");
        public static final Ac.b NOCODE_GET_NOON_FACTOR = Ac.c.a("NOCODE_GET_NOON_FACTOR");
        public static final Ac.b NOCODE_GET_OBJECT_ENABLED = Ac.c.a("NOCODE_GET_OBJECT_ENABLED");
        public static final Ac.b NOCODE_GET_PARENT = Ac.c.a("NOCODE_GET_PARENT");
        public static final Ac.b NOCODE_GET_POSITION = Ac.c.a("NOCODE_GET_POSITION");
        public static final Ac.b NOCODE_GET_RIGHT = Ac.c.a("NOCODE_GET_RIGHT");
        public static final Ac.b NOCODE_GET_ROTATION = Ac.c.a("NOCODE_GET_ROTATION");
        public static final Ac.b NOCODE_GET_SCALE = Ac.c.a("NOCODE_GET_SCALE");
        public static final Ac.b NOCODE_GET_SIDE_SPEED = Ac.c.a("NOCODE_GET_SIDE_SPEED");
        public static final Ac.b NOCODE_GET_STATIC = Ac.c.a("NOCODE_GET_STATIC");
        public static final Ac.b NOCODE_GET_SUNRISE_FACTOR = Ac.c.a("NOCODE_GET_SUNRISE_FACTOR");
        public static final Ac.b NOCODE_GET_TAG = Ac.c.a("NOCODE_GET_TAG");
        public static final Ac.b NOCODE_GET_TIME_OF_DAY = Ac.c.a("NOCODE_GET_TIME_OF_DAY");
        public static final Ac.b NOCODE_GET_TWILIGHT_FACTOR = Ac.c.a("NOCODE_GET_TWILIGHT_FACTOR");
        public static final Ac.b NOCODE_GET_UP = Ac.c.a("NOCODE_GET_UP");
        public static final Ac.b NOCODE_GET_UP_SPEED = Ac.c.a("NOCODE_GET_UP_SPEED");
        public static final Ac.b NOCODE_GET_VERTICAL_SPEED = Ac.c.a("NOCODE_GET_VERTICAL_SPEED");
        public static final Ac.b NOCODE_GREATER_OR_EQUAL = Ac.c.a("NOCODE_GREATER_OR_EQUAL");
        public static final Ac.b NOCODE_GREATER_THAN = Ac.c.a("NOCODE_GREATER_THAN");
        public static final Ac.b NOCODE_HEIGHT_NORMAL = Ac.c.a("NOCODE_HEIGHT_NORMAL");
        public static final Ac.b NOCODE_INPUT_DIALOG = Ac.c.a("NOCODE_INPUT_DIALOG");
        public static final Ac.b NOCODE_INSTANTIATE = Ac.c.a("NOCODE_INSTANTIATE");
        public static final Ac.b NOCODE_INVERSE_LERP = Ac.c.a("NOCODE_INVERSE_LERP");
        public static final Ac.b NOCODE_IS_3D_AIMED = Ac.c.a("NOCODE_IS_3D_AIMED");
        public static final Ac.b NOCODE_IS_3D_AIMED_BRANCH = Ac.c.a("NOCODE_IS_3D_AIMED_BRANCH");
        public static final Ac.b NOCODE_IS_3D_TOUCHED = Ac.c.a("NOCODE_IS_3D_TOUCHED");
        public static final Ac.b NOCODE_IS_3D_TOUCHED_BRANCH = Ac.c.a("NOCODE_IS_3D_TOUCHED_BRANCH");
        public static final Ac.b NOCODE_IS_COLLIDING_WITH = Ac.c.a("NOCODE_IS_COLLIDING_WITH");
        public static final Ac.b NOCODE_IS_GAME_PAD_BUTTON_DOWN_BRANCH = Ac.c.a("NOCODE_IS_GAME_PAD_BUTTON_DOWN_BRANCH");
        public static final Ac.b NOCODE_IS_GAME_PAD_BUTTON_PRESSED_BRANCH = Ac.c.a("NOCODE_IS_GAME_PAD_BUTTON_PRESSED_BRANCH");
        public static final Ac.b NOCODE_IS_GAME_PAD_BUTTON_UP_BRANCH = Ac.c.a("NOCODE_IS_GAME_PAD_BUTTON_UP_BRANCH");
        public static final Ac.b NOCODE_IS_GROUNDED_BRANCH = Ac.c.a("NOCODE_IS_GROUNDED_BRANCH");
        public static final Ac.b NOCODE_IS_GROUNDED_EVENT = Ac.c.a("NOCODE_IS_GROUNDED_EVENT");
        public static final Ac.b NOCODE_IS_IN_FRONT_BRANCH = Ac.c.a("NOCODE_IS_IN_FRONT_BRANCH");
        public static final Ac.b NOCODE_IS_KEY_DOWN_BRANCH = Ac.c.a("NOCODE_IS_KEY_DOWN_BRANCH");
        public static final Ac.b NOCODE_IS_KEY_PRESSED_BRANCH = Ac.c.a("NOCODE_IS_KEY_PRESSED_BRANCH");
        public static final Ac.b NOCODE_IS_KEY_UP_BRANCH = Ac.c.a("NOCODE_IS_KEY_UP_BRANCH");
        public static final Ac.b NOCODE_IS_KEYBOARD_BUTTON_DOWN_BRANCH = Ac.c.a("NOCODE_IS_KEYBOARD_BUTTON_DOWN_BRANCH");
        public static final Ac.b NOCODE_IS_KEYBOARD_BUTTON_PRESSED_BRANCH = Ac.c.a("NOCODE_IS_KEYBOARD_BUTTON_PRESSED_BRANCH");
        public static final Ac.b NOCODE_IS_KEYBOARD_BUTTON_UP_BRANCH = Ac.c.a("NOCODE_IS_KEYBOARD_BUTTON_UP_BRANCH");
        public static final Ac.b NOCODE_IS_LIST_EMPTY = Ac.c.a("NOCODE_IS_LIST_EMPTY");
        public static final Ac.b NOCODE_IS_LOADED = Ac.c.a("NOCODE_IS_LOADED");
        public static final Ac.b NOCODE_IS_LOADING = Ac.c.a("NOCODE_IS_LOADING");
        public static final Ac.b NOCODE_JUMP = Ac.c.a("NOCODE_JUMP");
        public static final Ac.b NOCODE_LENGTH = Ac.c.a("NOCODE_LENGTH");
        public static final Ac.b NOCODE_LERP = Ac.c.a("NOCODE_LERP");
        public static final Ac.b NOCODE_LESS_OR_EQUAL = Ac.c.a("NOCODE_LESS_OR_EQUAL");
        public static final Ac.b NOCODE_LESS_THAN = Ac.c.a("NOCODE_LESS_THAN");
        public static final Ac.b NOCODE_LIMITED_LOOP = Ac.c.a("NOCODE_LIMITED_LOOP");
        public static final Ac.b NOCODE_LIMITED_ROTATE = Ac.c.a("NOCODE_LIMITED_ROTATE");
        public static final Ac.b NOCODE_LOAD_WORLD = Ac.c.a("NOCODE_LOAD_WORLD");
        public static final Ac.b NOCODE_LOAD_WORLD_ASYNC = Ac.c.a("NOCODE_LOAD_WORLD_ASYNC");
        public static final Ac.b NOCODE_LOG = Ac.c.a("NOCODE_LOG");
        public static final Ac.b NOCODE_LOG_10 = Ac.c.a("NOCODE_LOG_10");
        public static final Ac.b NOCODE_LOOK_TO = Ac.c.a("NOCODE_LOOK_TO");
        public static final Ac.b NOCODE_LOOP = Ac.c.a("NOCODE_LOOP");
        public static final Ac.b NOCODE_LOOP_EACH_LIST = Ac.c.a("NOCODE_LOOP_EACH_LIST");
        public static final Ac.b NOCODE_MAX = Ac.c.a("NOCODE_MAX");
        public static final Ac.b NOCODE_MIN = Ac.c.a("NOCODE_MIN");
        public static final Ac.b NOCODE_MODULO = Ac.c.a("NOCODE_MODULO");
        public static final Ac.b NOCODE_MOVE = Ac.c.a("NOCODE_MOVE");
        public static final Ac.b NOCODE_MULTI_GATE = Ac.c.a("NOCODE_MULTI_GATE");
        public static final Ac.b NOCODE_MULTIPLY = Ac.c.a("NOCODE_MULTIPLY");
        public static final Ac.b NOCODE_NATURAL_LOG = Ac.c.a("NOCODE_NATURAL_LOG");
        public static final Ac.b NOCODE_NORMALIZE = Ac.c.a("NOCODE_NORMALIZE");
        public static final Ac.b NOCODE_NOT_EQUAL = Ac.c.a("NOCODE_NOT_EQUAL");
        public static final Ac.b NOCODE_NUMBER_TO_TEXT = Ac.c.a("NOCODE_NUMBER_TO_TEXT");
        public static final Ac.b NOCODE_OBJECT_DISTANCE = Ac.c.a("NOCODE_OBJECT_DISTANCE");
        public static final Ac.b NOCODE_OBJECT_EXISTS_BY_NAME = Ac.c.a("NOCODE_OBJECT_EXISTS_BY_NAME");
        public static final Ac.b NOCODE_OBJECT_SQRT_DISTANCE = Ac.c.a("NOCODE_OBJECT_SQRT_DISTANCE");
        public static final Ac.b NOCODE_ON_3D_AIM_BEGIN = Ac.c.a("NOCODE_ON_3D_AIM_BEGIN");
        public static final Ac.b NOCODE_ON_3D_AIM_EXIT = Ac.c.a("NOCODE_ON_3D_AIM_EXIT");
        public static final Ac.b NOCODE_ON_3D_TOUCH_BEGIN = Ac.c.a("NOCODE_ON_3D_TOUCH_BEGIN");
        public static final Ac.b NOCODE_ON_3D_TOUCH_EXIT = Ac.c.a("NOCODE_ON_3D_TOUCH_EXIT");
        public static final Ac.b NOCODE_ON_AXIS = Ac.c.a("NOCODE_ON_AXIS");
        public static final Ac.b NOCODE_ON_COLLISION = Ac.c.a("NOCODE_ON_COLLISION");
        public static final Ac.b NOCODE_ON_COLLISION_ENTER = Ac.c.a("NOCODE_ON_COLLISION_ENTER");
        public static final Ac.b NOCODE_ON_COLLISION_STOP = Ac.c.a("NOCODE_ON_COLLISION_STOP");
        public static final Ac.b NOCODE_ON_GAME_PAD_BUTTON_DOWN = Ac.c.a("NOCODE_ON_GAME_PAD_BUTTON_DOWN");
        public static final Ac.b NOCODE_ON_GAME_PAD_BUTTON_PRESSED = Ac.c.a("NOCODE_ON_GAME_PAD_BUTTON_PRESSED");
        public static final Ac.b NOCODE_ON_GAME_PAD_BUTTON_UP = Ac.c.a("NOCODE_ON_GAME_PAD_BUTTON_UP");
        public static final Ac.b NOCODE_ON_GROUNDED_BEGIN = Ac.c.a("NOCODE_ON_GROUNDED_BEGIN");
        public static final Ac.b NOCODE_ON_GROUNDED_EXIT = Ac.c.a("NOCODE_ON_GROUNDED_EXIT");
        public static final Ac.b NOCODE_ON_IN_FRONT = Ac.c.a("NOCODE_ON_IN_FRONT");
        public static final Ac.b NOCODE_ON_IN_FRONT_BEGIN = Ac.c.a("NOCODE_ON_IN_FRONT_BEGIN");
        public static final Ac.b NOCODE_ON_IN_FRONT_EXIT = Ac.c.a("NOCODE_ON_IN_FRONT_EXIT");
        public static final Ac.b NOCODE_ON_KEY_DOWN = Ac.c.a("NOCODE_ON_KEY_DOWN");
        public static final Ac.b NOCODE_ON_KEY_PRESSED = Ac.c.a("NOCODE_ON_KEY_PRESSED");
        public static final Ac.b NOCODE_ON_KEY_UP = Ac.c.a("NOCODE_ON_KEY_UP");
        public static final Ac.b NOCODE_ON_KEYBOARD_BUTTON_DOWN = Ac.c.a("NOCODE_ON_KEYBOARD_BUTTON_DOWN");
        public static final Ac.b NOCODE_ON_KEYBOARD_BUTTON_PRESSED = Ac.c.a("NOCODE_ON_KEYBOARD_BUTTON_PRESSED");
        public static final Ac.b NOCODE_ON_KEYBOARD_BUTTON_UP = Ac.c.a("NOCODE_ON_KEYBOARD_BUTTON_UP");
        public static final Ac.b NOCODE_ON_MOVEMENT_SPEED = Ac.c.a("NOCODE_ON_MOVEMENT_SPEED");
        public static final Ac.b NOCODE_ON_OBJECTS_DISTANCE = Ac.c.a("NOCODE_ON_OBJECTS_DISTANCE");
        public static final Ac.b NOCODE_ON_SIDE_SPEED = Ac.c.a("NOCODE_ON_SIDE_SPEED");
        public static final Ac.b NOCODE_ON_START = Ac.c.a("NOCODE_ON_START");
        public static final Ac.b NOCODE_ON_UP_SPEED = Ac.c.a("NOCODE_ON_UP_SPEED");
        public static final Ac.b NOCODE_ON_VERTICAL_SPEED = Ac.c.a("NOCODE_ON_VERTICAL_SPEED");
        public static final Ac.b NOCODE_ONE_MINUS = Ac.c.a("NOCODE_ONE_MINUS");
        public static final Ac.b NOCODE_PICK_COMPONENT = Ac.c.a("NOCODE_PICK_COMPONENT");
        public static final Ac.b NOCODE_PLAY_3D_AUDIO_IN_LOOP = Ac.c.a("NOCODE_PLAY_3D_AUDIO_IN_LOOP");
        public static final Ac.b NOCODE_PLAY_3D_AUDIO_ONCE = Ac.c.a("NOCODE_PLAY_3D_AUDIO_ONCE");
        public static final Ac.b NOCODE_PLAY_ANIMATION = Ac.c.a("NOCODE_PLAY_ANIMATION");
        public static final Ac.b NOCODE_POOLED_INSTANTIATE = Ac.c.a("NOCODE_POOLED_INSTANTIATE");
        public static final Ac.b NOCODE_POPUP_DIALOG_ONE_BUTTON = Ac.c.a("NOCODE_POPUP_DIALOG_ONE_BUTTON");
        public static final Ac.b NOCODE_POPUP_DIALOG_THREE_BUTTONS = Ac.c.a("NOCODE_POPUP_DIALOG_THREE_BUTTONS");
        public static final Ac.b NOCODE_POPUP_DIALOG_TWO_BUTTONS = Ac.c.a("NOCODE_POPUP_DIALOG_TWO_BUTTONS");
        public static final Ac.b NOCODE_POSITION_SWAY = Ac.c.a("NOCODE_POSITION_SWAY");
        public static final Ac.b NOCODE_POW = Ac.c.a("NOCODE_POW");
        public static final Ac.b NOCODE_RAW_BLENDING_MODE = Ac.c.a("NOCODE_RAW_BLENDING_MODE");
        public static final Ac.b NOCODE_RAW_BOOLEAN = Ac.c.a("NOCODE_RAW_BOOLEAN");
        public static final Ac.b NOCODE_RAW_COLOR = Ac.c.a("NOCODE_RAW_COLOR");
        public static final Ac.b NOCODE_RAW_CUBEMAP = Ac.c.a("NOCODE_RAW_CUBEMAP");
        public static final Ac.b NOCODE_RAW_ANIMATION_FILE = Ac.c.a("NOCODE_RAW_ANIMATION_FILE");
        public static final Ac.b NOCODE_RAW_ANIMATION_MASK_FILE = Ac.c.a("NOCODE_RAW_ANIMATION_MASK_FILE");
        public static final Ac.b NOCODE_RAW_FLOAT_2 = Ac.c.a("NOCODE_RAW_FLOAT_2");
        public static final Ac.b NOCODE_RAW_FLOAT_3 = Ac.c.a("NOCODE_RAW_FLOAT_3");
        public static final Ac.b NOCODE_RAW_FLOAT_4 = Ac.c.a("NOCODE_RAW_FLOAT_4");
        public static final Ac.b NOCODE_RAW_GRADIENT = Ac.c.a("NOCODE_RAW_GRADIENT");
        public static final Ac.b NOCODE_RAW_MAT_3 = Ac.c.a("NOCODE_RAW_MAT_3");
        public static final Ac.b NOCODE_RAW_MAT_4 = Ac.c.a("NOCODE_RAW_MAT_4");
        public static final Ac.b NOCODE_RAW_NUMBER = Ac.c.a("NOCODE_RAW_NUMBER");
        public static final Ac.b NOCODE_RAW_OBJECT = Ac.c.a("NOCODE_RAW_OBJECT");
        public static final Ac.b NOCODE_RAW_OBJECT_FILE = Ac.c.a("NOCODE_RAW_OBJECT_FILE");
        public static final Ac.b NOCODE_RAW_SLIDER = Ac.c.a("NOCODE_RAW_SLIDER");
        public static final Ac.b NOCODE_RAW_TEXT = Ac.c.a("NOCODE_RAW_TEXT");
        public static final Ac.b NOCODE_RAW_TEXTURE = Ac.c.a("NOCODE_RAW_TEXTURE");
        public static final Ac.b NOCODE_RAW_UV_SOURCE = Ac.c.a("NOCODE_RAW_UV_SOURCE");
        public static final Ac.b NOCODE_REMOVE_FIRST_LIST_ELEMENT = Ac.c.a("NOCODE_REMOVE_FIRST_LIST_ELEMENT");
        public static final Ac.b NOCODE_REMOVE_LAST_LIST_ELEMENT = Ac.c.a("NOCODE_REMOVE_LAST_LIST_ELEMENT");
        public static final Ac.b NOCODE_REMOVE_LIST_AT_INDEX = Ac.c.a("NOCODE_REMOVE_LIST_AT_INDEX");
        public static final Ac.b NOCODE_ROTATE = Ac.c.a("NOCODE_ROTATE");
        public static final Ac.b NOCODE_ROTATION_SWAY = Ac.c.a("NOCODE_ROTATION_SWAY");
        public static final Ac.b NOCODE_ROUND = Ac.c.a("NOCODE_ROUND");
        public static final Ac.b NOCODE_SATURATE = Ac.c.a("NOCODE_SATURATE");
        public static final Ac.b NOCODE_SEMAPHORE = Ac.c.a("NOCODE_SEMAPHORE");
        public static final Ac.b NOCODE_SEND_EVENT = Ac.c.a("NOCODE_SEND_EVENT");
        public static final Ac.b NOCODE_SEND_EVENT_BOOL = Ac.c.a("NOCODE_SEND_EVENT_BOOL");
        public static final Ac.b NOCODE_SEND_EVENT_NUMBER = Ac.c.a("NOCODE_SEND_EVENT_NUMBER");
        public static final Ac.b NOCODE_SEND_EVENT_TEXT = Ac.c.a("NOCODE_SEND_EVENT_TEXT");
        public static final Ac.b NOCODE_SET_ALLOW_ANIMATIONS = Ac.c.a("NOCODE_SET_ALLOW_ANIMATIONS");
        public static final Ac.b NOCODE_SET_ATTRIBUTE = Ac.c.a("NOCODE_SET_ATTRIBUTE");
        public static final Ac.b NOCODE_SET_COMPONENT_ENABLED = Ac.c.a("NOCODE_SET_COMPONENT_ENABLED");
        public static final Ac.b NOCODE_SET_DAY_NIGHT_ENABLED = Ac.c.a("NOCODE_SET_DAY_NIGHT_ENABLED");
        public static final Ac.b NOCODE_SET_DAY_NIGHT_LONGITUDE = Ac.c.a("NOCODE_SET_DAY_NIGHT_LONGITUDE");
        public static final Ac.b NOCODE_SET_DAY_NIGHT_SPEED = Ac.c.a("NOCODE_SET_DAY_NIGHT_SPEED");
        public static final Ac.b NOCODE_SET_DONT_DESTROY_ON_LOAD = Ac.c.a("NOCODE_SET_DONT_DESTROY_ON_LOAD");
        public static final Ac.b NOCODE_SET_GLOBAL_POSITION = Ac.c.a("NOCODE_SET_GLOBAL_POSITION");
        public static final Ac.b NOCODE_SET_GLOBAL_ROTATION = Ac.c.a("NOCODE_SET_GLOBAL_ROTATION");
        public static final Ac.b NOCODE_SET_GLOBAL_SCALE = Ac.c.a("NOCODE_SET_GLOBAL_SCALE");
        public static final Ac.b NOCODE_SET_MATERIAL_COLOR = Ac.c.a("NOCODE_SET_MATERIAL_COLOR");
        public static final Ac.b NOCODE_SET_META_ID = Ac.c.a("NOCODE_SET_META_ID");
        public static final Ac.b NOCODE_SET_NAME = Ac.c.a("NOCODE_SET_NAME");
        public static final Ac.b NOCODE_SET_OBJECT_ENABLED = Ac.c.a("NOCODE_SET_OBJECT_ENABLED");
        public static final Ac.b NOCODE_SET_PARENT = Ac.c.a("NOCODE_SET_PARENT");
        public static final Ac.b NOCODE_SET_POSITION = Ac.c.a("NOCODE_SET_POSITION");
        public static final Ac.b NOCODE_SET_ROTATION = Ac.c.a("NOCODE_SET_ROTATION");
        public static final Ac.b NOCODE_SET_SCALE = Ac.c.a("NOCODE_SET_SCALE");
        public static final Ac.b NOCODE_SET_STATIC = Ac.c.a("NOCODE_SET_STATIC");
        public static final Ac.b NOCODE_SET_TAG = Ac.c.a("NOCODE_SET_TAG");
        public static final Ac.b NOCODE_SET_TIME_OF_DAY = Ac.c.a("NOCODE_SET_TIME_OF_DAY");
        public static final Ac.b NOCODE_SIGNED_TO_UNIT = Ac.c.a("NOCODE_SIGNED_TO_UNIT");
        public static final Ac.b NOCODE_SIN = Ac.c.a("NOCODE_SIN");
        public static final Ac.b NOCODE_SIN_TIME = Ac.c.a("NOCODE_SIN_TIME");
        public static final Ac.b NOCODE_SMOOTH_DELTA_TIME = Ac.c.a("NOCODE_SMOOTH_DELTA_TIME");
        public static final Ac.b NOCODE_SMOOTH_DISPLACEMENT = Ac.c.a("NOCODE_SMOOTH_DISPLACEMENT");
        public static final Ac.b NOCODE_SMOOTH_STEP = Ac.c.a("NOCODE_SMOOTH_STEP");
        public static final Ac.b NOCODE_SQRT = Ac.c.a("NOCODE_SQRT");
        public static final Ac.b NOCODE_STOP_ANIMATION = Ac.c.a("NOCODE_STOP_ANIMATION");
        public static final Ac.b NOCODE_SUBDIVIDE = Ac.c.a("NOCODE_SUBDIVIDE");
        public static final Ac.b NOCODE_SUBTRACT = Ac.c.a("NOCODE_SUBTRACT");
        public static final Ac.b NOCODE_SWAP_CHILDREN_POSITION = Ac.c.a("NOCODE_SWAP_CHILDREN_POSITION");
        public static final Ac.b NOCODE_SWAP_LIST_ELEMENTS = Ac.c.a("NOCODE_SWAP_LIST_ELEMENTS");
        public static final Ac.b NOCODE_SWAP_LIST_INDEX = Ac.c.a("NOCODE_SWAP_LIST_INDEX");
        public static final Ac.b NOCODE_TAN = Ac.c.a("NOCODE_TAN");
        public static final Ac.b NOCODE_TELEPORT_TO = Ac.c.a("NOCODE_TELEPORT_TO");
        public static final Ac.b NOCODE_TIME = Ac.c.a("NOCODE_TIME");
        public static final Ac.b NOCODE_TRACE_RAY = Ac.c.a("NOCODE_TRACE_RAY");
        public static final Ac.b NOCODE_TRACE_RAY_OBJECT = Ac.c.a("NOCODE_TRACE_RAY_OBJECT");
        public static final Ac.b NOCODE_TRIANGLE_NORMAL = Ac.c.a("NOCODE_TRIANGLE_NORMAL");
        public static final Ac.b NOCODE_TRUNCATE = Ac.c.a("NOCODE_TRUNCATE");
        public static final Ac.b NOCODE_VECTOR_COMPOSE = Ac.c.a("NOCODE_VECTOR_COMPOSE");
        public static final Ac.b NOCODE_VECTOR_DECOMPOSE = Ac.c.a("NOCODE_VECTOR_DECOMPOSE");
        public static final Ac.b NOCODE_VECTOR_WW = Ac.c.a("NOCODE_VECTOR_WW");
        public static final Ac.b NOCODE_VECTOR_WWW = Ac.c.a("NOCODE_VECTOR_WWW");
        public static final Ac.b NOCODE_VECTOR_WWX = Ac.c.a("NOCODE_VECTOR_WWX");
        public static final Ac.b NOCODE_VECTOR_WWY = Ac.c.a("NOCODE_VECTOR_WWY");
        public static final Ac.b NOCODE_VECTOR_WWZ = Ac.c.a("NOCODE_VECTOR_WWZ");
        public static final Ac.b NOCODE_VECTOR_WX = Ac.c.a("NOCODE_VECTOR_WX");
        public static final Ac.b NOCODE_VECTOR_WXW = Ac.c.a("NOCODE_VECTOR_WXW");
        public static final Ac.b NOCODE_VECTOR_WXX = Ac.c.a("NOCODE_VECTOR_WXX");
        public static final Ac.b NOCODE_VECTOR_WXY = Ac.c.a("NOCODE_VECTOR_WXY");
        public static final Ac.b NOCODE_VECTOR_WXZ = Ac.c.a("NOCODE_VECTOR_WXZ");
        public static final Ac.b NOCODE_VECTOR_WY = Ac.c.a("NOCODE_VECTOR_WY");
        public static final Ac.b NOCODE_VECTOR_WYW = Ac.c.a("NOCODE_VECTOR_WYW");
        public static final Ac.b NOCODE_VECTOR_WYX = Ac.c.a("NOCODE_VECTOR_WYX");
        public static final Ac.b NOCODE_VECTOR_WYY = Ac.c.a("NOCODE_VECTOR_WYY");
        public static final Ac.b NOCODE_VECTOR_WYZ = Ac.c.a("NOCODE_VECTOR_WYZ");
        public static final Ac.b NOCODE_VECTOR_WZ = Ac.c.a("NOCODE_VECTOR_WZ");
        public static final Ac.b NOCODE_VECTOR_WZW = Ac.c.a("NOCODE_VECTOR_WZW");
        public static final Ac.b NOCODE_VECTOR_WZX = Ac.c.a("NOCODE_VECTOR_WZX");
        public static final Ac.b NOCODE_VECTOR_WZY = Ac.c.a("NOCODE_VECTOR_WZY");
        public static final Ac.b NOCODE_VECTOR_WZZ = Ac.c.a("NOCODE_VECTOR_WZZ");
        public static final Ac.b NOCODE_VECTOR_XW = Ac.c.a("NOCODE_VECTOR_XW");
        public static final Ac.b NOCODE_VECTOR_XWW = Ac.c.a("NOCODE_VECTOR_XWW");
        public static final Ac.b NOCODE_VECTOR_XWX = Ac.c.a("NOCODE_VECTOR_XWX");
        public static final Ac.b NOCODE_VECTOR_XWY = Ac.c.a("NOCODE_VECTOR_XWY");
        public static final Ac.b NOCODE_VECTOR_XWZ = Ac.c.a("NOCODE_VECTOR_XWZ");
        public static final Ac.b NOCODE_VECTOR_XX = Ac.c.a("NOCODE_VECTOR_XX");
        public static final Ac.b NOCODE_VECTOR_XXW = Ac.c.a("NOCODE_VECTOR_XXW");
        public static final Ac.b NOCODE_VECTOR_XXX = Ac.c.a("NOCODE_VECTOR_XXX");
        public static final Ac.b NOCODE_VECTOR_XXY = Ac.c.a("NOCODE_VECTOR_XXY");
        public static final Ac.b NOCODE_VECTOR_XXZ = Ac.c.a("NOCODE_VECTOR_XXZ");
        public static final Ac.b NOCODE_VECTOR_XY = Ac.c.a("NOCODE_VECTOR_XY");
        public static final Ac.b NOCODE_VECTOR_XYW = Ac.c.a("NOCODE_VECTOR_XYW");
        public static final Ac.b NOCODE_VECTOR_XYX = Ac.c.a("NOCODE_VECTOR_XYX");
        public static final Ac.b NOCODE_VECTOR_XYY = Ac.c.a("NOCODE_VECTOR_XYY");
        public static final Ac.b NOCODE_VECTOR_XYZ = Ac.c.a("NOCODE_VECTOR_XYZ");
        public static final Ac.b NOCODE_VECTOR_XZ = Ac.c.a("NOCODE_VECTOR_XZ");
        public static final Ac.b NOCODE_VECTOR_XZW = Ac.c.a("NOCODE_VECTOR_XZW");
        public static final Ac.b NOCODE_VECTOR_XZX = Ac.c.a("NOCODE_VECTOR_XZX");
        public static final Ac.b NOCODE_VECTOR_XZY = Ac.c.a("NOCODE_VECTOR_XZY");
        public static final Ac.b NOCODE_VECTOR_XZZ = Ac.c.a("NOCODE_VECTOR_XZZ");
        public static final Ac.b NOCODE_VECTOR_YW = Ac.c.a("NOCODE_VECTOR_YW");
        public static final Ac.b NOCODE_VECTOR_YWW = Ac.c.a("NOCODE_VECTOR_YWW");
        public static final Ac.b NOCODE_VECTOR_YWX = Ac.c.a("NOCODE_VECTOR_YWX");
        public static final Ac.b NOCODE_VECTOR_YWY = Ac.c.a("NOCODE_VECTOR_YWY");
        public static final Ac.b NOCODE_VECTOR_YWZ = Ac.c.a("NOCODE_VECTOR_YWZ");
        public static final Ac.b NOCODE_VECTOR_YX = Ac.c.a("NOCODE_VECTOR_YX");
        public static final Ac.b NOCODE_VECTOR_YXW = Ac.c.a("NOCODE_VECTOR_YXW");
        public static final Ac.b NOCODE_VECTOR_YXX = Ac.c.a("NOCODE_VECTOR_YXX");
        public static final Ac.b NOCODE_VECTOR_YXY = Ac.c.a("NOCODE_VECTOR_YXY");
        public static final Ac.b NOCODE_VECTOR_YXZ = Ac.c.a("NOCODE_VECTOR_YXZ");
        public static final Ac.b NOCODE_VECTOR_YY = Ac.c.a("NOCODE_VECTOR_YY");
        public static final Ac.b NOCODE_VECTOR_YYW = Ac.c.a("NOCODE_VECTOR_YYW");
        public static final Ac.b NOCODE_VECTOR_YYX = Ac.c.a("NOCODE_VECTOR_YYX");
        public static final Ac.b NOCODE_VECTOR_YYY = Ac.c.a("NOCODE_VECTOR_YYY");
        public static final Ac.b NOCODE_VECTOR_YYZ = Ac.c.a("NOCODE_VECTOR_YYZ");
        public static final Ac.b NOCODE_VECTOR_YZ = Ac.c.a("NOCODE_VECTOR_YZ");
        public static final Ac.b NOCODE_VECTOR_YZW = Ac.c.a("NOCODE_VECTOR_YZW");
        public static final Ac.b NOCODE_VECTOR_YZX = Ac.c.a("NOCODE_VECTOR_YZX");
        public static final Ac.b NOCODE_VECTOR_YZY = Ac.c.a("NOCODE_VECTOR_YZY");
        public static final Ac.b NOCODE_VECTOR_YZZ = Ac.c.a("NOCODE_VECTOR_YZZ");
        public static final Ac.b NOCODE_VECTOR_ZW = Ac.c.a("NOCODE_VECTOR_ZW");
        public static final Ac.b NOCODE_VECTOR_ZWW = Ac.c.a("NOCODE_VECTOR_ZWW");
        public static final Ac.b NOCODE_VECTOR_ZWX = Ac.c.a("NOCODE_VECTOR_ZWX");
        public static final Ac.b NOCODE_VECTOR_ZWY = Ac.c.a("NOCODE_VECTOR_ZWY");
        public static final Ac.b NOCODE_VECTOR_ZWZ = Ac.c.a("NOCODE_VECTOR_ZWZ");
        public static final Ac.b NOCODE_VECTOR_ZX = Ac.c.a("NOCODE_VECTOR_ZX");
        public static final Ac.b NOCODE_VECTOR_ZXW = Ac.c.a("NOCODE_VECTOR_ZXW");
        public static final Ac.b NOCODE_VECTOR_ZXX = Ac.c.a("NOCODE_VECTOR_ZXX");
        public static final Ac.b NOCODE_VECTOR_ZXY = Ac.c.a("NOCODE_VECTOR_ZXY");
        public static final Ac.b NOCODE_VECTOR_ZXZ = Ac.c.a("NOCODE_VECTOR_ZXZ");
        public static final Ac.b NOCODE_VECTOR_ZY = Ac.c.a("NOCODE_VECTOR_ZY");
        public static final Ac.b NOCODE_VECTOR_ZYW = Ac.c.a("NOCODE_VECTOR_ZYW");
        public static final Ac.b NOCODE_VECTOR_ZYX = Ac.c.a("NOCODE_VECTOR_ZYX");
        public static final Ac.b NOCODE_VECTOR_ZYY = Ac.c.a("NOCODE_VECTOR_ZYY");
        public static final Ac.b NOCODE_VECTOR_ZYZ = Ac.c.a("NOCODE_VECTOR_ZYZ");
        public static final Ac.b NOCODE_VECTOR_ZZ = Ac.c.a("NOCODE_VECTOR_ZZ");
        public static final Ac.b NOCODE_VECTOR_ZZW = Ac.c.a("NOCODE_VECTOR_ZZW");
        public static final Ac.b NOCODE_VECTOR_ZZX = Ac.c.a("NOCODE_VECTOR_ZZX");
        public static final Ac.b NOCODE_VECTOR_ZZY = Ac.c.a("NOCODE_VECTOR_ZZY");
        public static final Ac.b NOCODE_VECTOR_ZZZ = Ac.c.a("NOCODE_VECTOR_ZZZ");
        public static final Ac.b NOCODE_WAIT = Ac.c.a("NOCODE_WAIT");
        public static final Ac.b NOCODE_SLOT_A = Ac.c.a("NOCODE_SLOT_A");
        public static final Ac.b NOCODE_SLOT_ALLOW_ANIMATIONS = Ac.c.a("NOCODE_SLOT_ALLOW_ANIMATIONS");
        public static final Ac.b NOCODE_SLOT_ANGLES = Ac.c.a("NOCODE_SLOT_ANGLES");
        public static final Ac.b NOCODE_SLOT_ANIMATION_NAME = Ac.c.a("NOCODE_SLOT_ANIMATION_NAME");
        public static final Ac.b NOCODE_SLOT_AXIS = Ac.c.a("NOCODE_SLOT_AXIS");
        public static final Ac.b NOCODE_SLOT_AXIS_NAME = Ac.c.a("NOCODE_SLOT_AXIS_NAME");
        public static final Ac.b NOCODE_SLOT_B = Ac.c.a("NOCODE_SLOT_B");
        public static final Ac.b NOCODE_SLOT_BACK = Ac.c.a("NOCODE_SLOT_BACK");
        public static final Ac.b NOCODE_SLOT_BASE = Ac.c.a("NOCODE_SLOT_BASE");
        public static final Ac.b NOCODE_SLOT_BLEND = Ac.c.a("NOCODE_SLOT_BLEND");
        public static final Ac.b NOCODE_SLOT_BLENDING_MODE = Ac.c.a("NOCODE_SLOT_BLENDING_MODE");
        public static final Ac.b NOCODE_SLOT_BUTTON_NAME = Ac.c.a("NOCODE_SLOT_BUTTON_NAME");
        public static final Ac.b NOCODE_SLOT_C = Ac.c.a("NOCODE_SLOT_C");
        public static final Ac.b NOCODE_SLOT_CANCEL_BUTTON = Ac.c.a("NOCODE_SLOT_CANCEL_BUTTON");
        public static final Ac.b NOCODE_SLOT_CHILD = Ac.c.a("NOCODE_SLOT_CHILD");
        public static final Ac.b NOCODE_SLOT_CHILD_COUNT = Ac.c.a("NOCODE_SLOT_CHILD_COUNT");
        public static final Ac.b NOCODE_SLOT_COLLIDER = Ac.c.a("NOCODE_SLOT_COLLIDER");
        public static final Ac.b NOCODE_SLOT_COLLIDER_OBJECT = Ac.c.a("NOCODE_SLOT_COLLIDER_OBJECT");
        public static final Ac.b NOCODE_SLOT_COLLISION = Ac.c.a("NOCODE_SLOT_COLLISION");
        public static final Ac.b NOCODE_SLOT_COLOR = Ac.c.a("NOCODE_SLOT_COLOR");
        public static final Ac.b NOCODE_SLOT_COMPONENT = Ac.c.a("NOCODE_SLOT_COMPONENT");
        public static final Ac.b NOCODE_SLOT_CONDITION = Ac.c.a("NOCODE_SLOT_CONDITION");
        public static final Ac.b NOCODE_SLOT_CONFIRM_BUTTON = Ac.c.a("NOCODE_SLOT_CONFIRM_BUTTON");
        public static final Ac.b NOCODE_SLOT_CONTACT = Ac.c.a("NOCODE_SLOT_CONTACT");
        public static final Ac.b NOCODE_SLOT_CONTACT_COUNT = Ac.c.a("NOCODE_SLOT_CONTACT_COUNT");
        public static final Ac.b NOCODE_SLOT_CONTACT_LIST = Ac.c.a("NOCODE_SLOT_CONTACT_LIST");
        public static final Ac.b NOCODE_SLOT_CONTACT_POINT = Ac.c.a("NOCODE_SLOT_CONTACT_POINT");
        public static final Ac.b NOCODE_SLOT_COS_TIME = Ac.c.a("NOCODE_SLOT_COS_TIME");
        public static final Ac.b NOCODE_SLOT_COUNT = Ac.c.a("NOCODE_SLOT_COUNT");
        public static final Ac.b NOCODE_SLOT_COUNTER = Ac.c.a("NOCODE_SLOT_COUNTER");
        public static final Ac.b NOCODE_SLOT_CUBEMAP = Ac.c.a("NOCODE_SLOT_CUBEMAP");
        public static final Ac.b NOCODE_SLOT_DAMPING = Ac.c.a("NOCODE_SLOT_DAMPING");
        public static final Ac.b NOCODE_SLOT_DECIMALS = Ac.c.a("NOCODE_SLOT_DECIMALS");
        public static final Ac.b NOCODE_SLOT_DEFAULT_TEXT = Ac.c.a("NOCODE_SLOT_DEFAULT_TEXT");
        public static final Ac.b NOCODE_SLOT_DELTA_TIME = Ac.c.a("NOCODE_SLOT_DELTA_TIME");
        public static final Ac.b NOCODE_SLOT_DIAMETER = Ac.c.a("NOCODE_SLOT_DIAMETER");
        public static final Ac.b NOCODE_SLOT_DIRECTION = Ac.c.a("NOCODE_SLOT_DIRECTION");
        public static final Ac.b NOCODE_SLOT_DISTANCE = Ac.c.a("NOCODE_SLOT_DISTANCE");
        public static final Ac.b NOCODE_SLOT_DONE_BUTTON = Ac.c.a("NOCODE_SLOT_DONE_BUTTON");
        public static final Ac.b NOCODE_SLOT_DONT_DESTROY_ON_LOAD = Ac.c.a("NOCODE_SLOT_DONT_DESTROY_ON_LOAD");
        public static final Ac.b NOCODE_SLOT_DOWN = Ac.c.a("NOCODE_SLOT_DOWN");
        public static final Ac.b NOCODE_SLOT_EDGE0 = Ac.c.a("NOCODE_SLOT_EDGE0");
        public static final Ac.b NOCODE_SLOT_EDGE1 = Ac.c.a("NOCODE_SLOT_EDGE1");
        public static final Ac.b NOCODE_SLOT_ELEMENT = Ac.c.a("NOCODE_SLOT_ELEMENT");
        public static final Ac.b NOCODE_SLOT_ELEMENT_A = Ac.c.a("NOCODE_SLOT_ELEMENT_A");
        public static final Ac.b NOCODE_SLOT_ELEMENT_B = Ac.c.a("NOCODE_SLOT_ELEMENT_B");
        public static final Ac.b NOCODE_SLOT_ENABLED = Ac.c.a("NOCODE_SLOT_ENABLED");
        public static final Ac.b NOCODE_SLOT_FACE_NORMAL = Ac.c.a("NOCODE_SLOT_FACE_NORMAL");
        public static final Ac.b NOCODE_SLOT_FALSE = Ac.c.a("NOCODE_SLOT_FALSE");
        public static final Ac.b NOCODE_SLOT_FORWARD = Ac.c.a("NOCODE_SLOT_FORWARD");
        public static final Ac.b NOCODE_SLOT_FOUND = Ac.c.a("NOCODE_SLOT_FOUND");
        public static final Ac.b NOCODE_SLOT_FROM = Ac.c.a("NOCODE_SLOT_FROM");
        public static final Ac.b NOCODE_SLOT_GAME_OBJECT = Ac.c.a("NOCODE_SLOT_GAME_OBJECT");
        public static final Ac.b NOCODE_SLOT_GLOBAL_POSITION = Ac.c.a("NOCODE_SLOT_GLOBAL_POSITION");
        public static final Ac.b NOCODE_SLOT_GLOBAL_ROTATION = Ac.c.a("NOCODE_SLOT_GLOBAL_ROTATION");
        public static final Ac.b NOCODE_SLOT_GLOBAL_SCALE = Ac.c.a("NOCODE_SLOT_GLOBAL_SCALE");
        public static final Ac.b NOCODE_SLOT_GRADIENT = Ac.c.a("NOCODE_SLOT_GRADIENT");
        public static final Ac.b NOCODE_SLOT_HEIGHT_A = Ac.c.a("NOCODE_SLOT_HEIGHT_A");
        public static final Ac.b NOCODE_SLOT_HEIGHT_B = Ac.c.a("NOCODE_SLOT_HEIGHT_B");
        public static final Ac.b NOCODE_SLOT_HEIGHT_C = Ac.c.a("NOCODE_SLOT_HEIGHT_C");
        public static final Ac.b NOCODE_SLOT_HOUR = Ac.c.a("NOCODE_SLOT_HOUR");
        public static final Ac.b NOCODE_SLOT_IGNORE_Y = Ac.c.a("NOCODE_SLOT_IGNORE_Y");
        public static final Ac.b NOCODE_SLOT_IMPULSE = Ac.c.a("NOCODE_SLOT_IMPULSE");
        public static final Ac.b NOCODE_SLOT_IN = Ac.c.a("NOCODE_SLOT_IN");
        public static final Ac.b NOCODE_SLOT_INDEX = Ac.c.a("NOCODE_SLOT_INDEX");
        public static final Ac.b NOCODE_SLOT_INDEX_A = Ac.c.a("NOCODE_SLOT_INDEX_A");
        public static final Ac.b NOCODE_SLOT_INDEX_B = Ac.c.a("NOCODE_SLOT_INDEX_B");
        public static final Ac.b NOCODE_SLOT_IS_A = Ac.c.a("NOCODE_SLOT_IS_A");
        public static final Ac.b NOCODE_SLOT_ITEM = Ac.c.a("NOCODE_SLOT_ITEM");
        public static final Ac.b NOCODE_SLOT_KEY_NAME = Ac.c.a("NOCODE_SLOT_KEY_NAME");
        public static final Ac.b NOCODE_SLOT_LEFT = Ac.c.a("NOCODE_SLOT_LEFT");
        public static final Ac.b NOCODE_SLOT_LIST = Ac.c.a("NOCODE_SLOT_LIST");
        public static final Ac.b NOCODE_SLOT_LOAD_MESSAGE = Ac.c.a("NOCODE_SLOT_LOAD_MESSAGE");
        public static final Ac.b NOCODE_SLOT_LOAD_PERCENT = Ac.c.a("NOCODE_SLOT_LOAD_PERCENT");
        public static final Ac.b NOCODE_SLOT_LOAD_TOTAL = Ac.c.a("NOCODE_SLOT_LOAD_TOTAL");
        public static final Ac.b NOCODE_SLOT_LOADED_COUNT = Ac.c.a("NOCODE_SLOT_LOADED_COUNT");
        public static final Ac.b NOCODE_SLOT_LONGITUDE = Ac.c.a("NOCODE_SLOT_LONGITUDE");
        public static final Ac.b NOCODE_SLOT_LOOP = Ac.c.a("NOCODE_SLOT_LOOP");
        public static final Ac.b NOCODE_SLOT_LOOP_BODY = Ac.c.a("NOCODE_SLOT_LOOP_BODY");
        public static final Ac.b NOCODE_SLOT_MAIN_PARENT = Ac.c.a("NOCODE_SLOT_MAIN_PARENT");
        public static final Ac.b NOCODE_SLOT_MAT3 = Ac.c.a("NOCODE_SLOT_MAT3");
        public static final Ac.b NOCODE_SLOT_MAT4 = Ac.c.a("NOCODE_SLOT_MAT4");
        public static final Ac.b NOCODE_SLOT_MATERIAL = Ac.c.a("NOCODE_SLOT_MATERIAL");
        public static final Ac.b NOCODE_SLOT_MAX = Ac.c.a("NOCODE_SLOT_MAX");
        public static final Ac.b NOCODE_SLOT_MAX_DISTANCE = Ac.c.a("NOCODE_SLOT_MAX_DISTANCE");
        public static final Ac.b NOCODE_SLOT_MAX_OBJECTS = Ac.c.a("NOCODE_SLOT_MAX_OBJECTS");
        public static final Ac.b NOCODE_SLOT_MESSAGE = Ac.c.a("NOCODE_SLOT_MESSAGE");
        public static final Ac.b NOCODE_SLOT_META_ID = Ac.c.a("NOCODE_SLOT_META_ID");
        public static final Ac.b NOCODE_SLOT_MID_BUTTON = Ac.c.a("NOCODE_SLOT_MID_BUTTON");
        public static final Ac.b NOCODE_SLOT_MIN = Ac.c.a("NOCODE_SLOT_MIN");
        public static final Ac.b NOCODE_SLOT_MISSING = Ac.c.a("NOCODE_SLOT_MISSING");
        public static final Ac.b NOCODE_SLOT_NAME = Ac.c.a("NOCODE_SLOT_NAME");
        public static final Ac.b NOCODE_SLOT_NO_HIT = Ac.c.a("NOCODE_SLOT_NO_HIT");
        public static final Ac.b NOCODE_SLOT_NORMAL = Ac.c.a("NOCODE_SLOT_NORMAL");
        public static final Ac.b NOCODE_SLOT_NUMBER = Ac.c.a("NOCODE_SLOT_NUMBER");
        public static final Ac.b NOCODE_SLOT_OBJECT = Ac.c.a("NOCODE_SLOT_OBJECT");
        public static final Ac.b NOCODE_SLOT_OBJECT_A = Ac.c.a("NOCODE_SLOT_OBJECT_A");
        public static final Ac.b NOCODE_SLOT_OBJECT_B = Ac.c.a("NOCODE_SLOT_OBJECT_B");
        public static final Ac.b NOCODE_SLOT_OBJECT_FILE = Ac.c.a("NOCODE_SLOT_OBJECT_FILE");
        public static final Ac.b NOCODE_SLOT_ANIMATION_FILE = Ac.c.a("NOCODE_SLOT_ANIMATION_FILE");
        public static final Ac.b NOCODE_SLOT_ANIMATION_MASK_FILE = Ac.c.a("NOCODE_SLOT_ANIMATION_MASK_FILE");
        public static final Ac.b NOCODE_SLOT_ANIMATION = Ac.c.a("NOCODE_SLOT_ANIMATION");
        public static final Ac.b NOCODE_SLOT_ANIMATION_MASK = Ac.c.a("NOCODE_SLOT_ANIMATION_MASK");
        public static final Ac.b NOCODE_SLOT_ON_CANCEL = Ac.c.a("NOCODE_SLOT_ON_CANCEL");
        public static final Ac.b NOCODE_SLOT_ON_CONFIRM = Ac.c.a("NOCODE_SLOT_ON_CONFIRM");
        public static final Ac.b NOCODE_SLOT_ON_FALSE = Ac.c.a("NOCODE_SLOT_ON_FALSE");
        public static final Ac.b NOCODE_SLOT_ON_FINISH = Ac.c.a("NOCODE_SLOT_ON_FINISH");
        public static final Ac.b NOCODE_SLOT_ON_HIT = Ac.c.a("NOCODE_SLOT_ON_HIT");
        public static final Ac.b NOCODE_SLOT_ON_MID = Ac.c.a("NOCODE_SLOT_ON_MID");
        public static final Ac.b NOCODE_SLOT_ON_SUCCESS = Ac.c.a("NOCODE_SLOT_ON_SUCCESS");
        public static final Ac.b NOCODE_SLOT_ON_TRUE = Ac.c.a("NOCODE_SLOT_ON_TRUE");
        public static final Ac.b NOCODE_SLOT_OPACITY = Ac.c.a("NOCODE_SLOT_OPACITY");
        public static final Ac.b NOCODE_SLOT_OTHER_NAME = Ac.c.a("NOCODE_SLOT_OTHER_NAME");
        public static final Ac.b NOCODE_SLOT_OUT = Ac.c.a("NOCODE_SLOT_OUT");
        public static final Ac.b NOCODE_SLOT_PARENT = Ac.c.a("NOCODE_SLOT_PARENT");
        public static final Ac.b NOCODE_SLOT_PHYSICS_COMPONENT = Ac.c.a("NOCODE_SLOT_PHYSICS_COMPONENT");
        public static final Ac.b NOCODE_SLOT_PITCH = Ac.c.a("NOCODE_SLOT_PITCH");
        public static final Ac.b NOCODE_SLOT_PIVOT = Ac.c.a("NOCODE_SLOT_PIVOT");
        public static final Ac.b NOCODE_SLOT_POINT = Ac.c.a("NOCODE_SLOT_POINT");
        public static final Ac.b NOCODE_SLOT_POSITION = Ac.c.a("NOCODE_SLOT_POSITION");
        public static final Ac.b NOCODE_SLOT_QUATERNION = Ac.c.a("NOCODE_SLOT_QUATERNION");
        public static final Ac.b NOCODE_SLOT_RESULT = Ac.c.a("NOCODE_SLOT_RESULT");
        public static final Ac.b NOCODE_SLOT_RIGHT = Ac.c.a("NOCODE_SLOT_RIGHT");
        public static final Ac.b NOCODE_SLOT_ROTATION = Ac.c.a("NOCODE_SLOT_ROTATION");
        public static final Ac.b NOCODE_SLOT_SCALE = Ac.c.a("NOCODE_SLOT_SCALE");
        public static final Ac.b NOCODE_SLOT_SECONDS = Ac.c.a("NOCODE_SLOT_SECONDS");
        public static final Ac.b NOCODE_SLOT_SIN_TIME = Ac.c.a("NOCODE_SLOT_SIN_TIME");
        public static final Ac.b NOCODE_SLOT_SMOOTH_DELTA = Ac.c.a("NOCODE_SLOT_SMOOTH_DELTA");
        public static final Ac.b NOCODE_SLOT_SOUND_FILE = Ac.c.a("NOCODE_SLOT_SOUND_FILE");
        public static final Ac.b NOCODE_SLOT_SPEED = Ac.c.a("NOCODE_SLOT_SPEED");
        public static final Ac.b NOCODE_SLOT_INTENSITY = Ac.c.a("NOCODE_SLOT_INTENSITY");
        public static final Ac.b NOCODE_SLOT_SQRT_DISTANCE = Ac.c.a("NOCODE_SLOT_SQRT_DISTANCE");
        public static final Ac.b NOCODE_SLOT_STATIC = Ac.c.a("NOCODE_SLOT_STATIC");
        public static final Ac.b NOCODE_SLOT_T = Ac.c.a("NOCODE_SLOT_T");
        public static final Ac.b NOCODE_SLOT_TAG = Ac.c.a("NOCODE_SLOT_TAG");
        public static final Ac.b NOCODE_SLOT_TARGET = Ac.c.a("NOCODE_SLOT_TARGET");
        public static final Ac.b NOCODE_SLOT_TEXT = Ac.c.a("NOCODE_SLOT_TEXT");
        public static final Ac.b NOCODE_SLOT_TEXTURE = Ac.c.a("NOCODE_SLOT_TEXTURE");
        public static final Ac.b NOCODE_SLOT_THEN = Ac.c.a("NOCODE_SLOT_THEN");
        public static final Ac.b NOCODE_SLOT_TIME = Ac.c.a("NOCODE_SLOT_TIME");
        public static final Ac.b NOCODE_SLOT_TITLE = Ac.c.a("NOCODE_SLOT_TITLE");
        public static final Ac.b NOCODE_SLOT_TO = Ac.c.a("NOCODE_SLOT_TO");
        public static final Ac.b NOCODE_SLOT_TO_HIERARCHY = Ac.c.a("NOCODE_SLOT_TO_HIERARCHY");
        public static final Ac.b NOCODE_SLOT_TOLERANCE = Ac.c.a("NOCODE_SLOT_TOLERANCE");
        public static final Ac.b NOCODE_SLOT_TRANSITION_DELAY = Ac.c.a("NOCODE_SLOT_TRANSITION_DELAY");
        public static final Ac.b NOCODE_SLOT_TRUE = Ac.c.a("NOCODE_SLOT_TRUE");
        public static final Ac.b NOCODE_SLOT_TYPE = Ac.c.a("NOCODE_SLOT_TYPE");
        public static final Ac.b NOCODE_SLOT_UV_COORD = Ac.c.a("NOCODE_SLOT_UV_COORD");
        public static final Ac.b NOCODE_SLOT_UV_SOURCE = Ac.c.a("NOCODE_SLOT_UV_SOURCE");
        public static final Ac.b NOCODE_SLOT_UP = Ac.c.a("NOCODE_SLOT_UP");
        public static final Ac.b NOCODE_SLOT_VALUE = Ac.c.a("NOCODE_SLOT_VALUE");
        public static final Ac.b NOCODE_SLOT_VECTOR = Ac.c.a("NOCODE_SLOT_VECTOR");
        public static final Ac.b NOCODE_SLOT_VOLUME = Ac.c.a("NOCODE_SLOT_VOLUME");
        public static final Ac.b NOCODE_SLOT_AUDIO_OBJECT = Ac.c.a("NOCODE_SLOT_AUDIO_OBJECT");
        public static final Ac.b NOCODE_SLOT_METERS = Ac.c.a("NOCODE_SLOT_METERS");
        public static final Ac.b NOCODE_SLOT_W = Ac.c.a("NOCODE_SLOT_W");
        public static final Ac.b NOCODE_SLOT_WIDTH = Ac.c.a("NOCODE_SLOT_WIDTH");
        public static final Ac.b NOCODE_SLOT_WORLD_FILE = Ac.c.a("NOCODE_SLOT_WORLD_FILE");
        public static final Ac.b NOCODE_SLOT_X = Ac.c.a("NOCODE_SLOT_X");
        public static final Ac.b NOCODE_SLOT_Y = Ac.c.a("NOCODE_SLOT_Y");
        public static final Ac.b NOCODE_SLOT_Z = Ac.c.a("NOCODE_SLOT_Z");
        public static final Ac.b NOCODE_SLOT_ALBEDO = Ac.c.a("NOCODE_SLOT_ALBEDO");
        public static final Ac.b NOCODE_SLOT_AO_MAP = Ac.c.a("NOCODE_SLOT_AO_MAP");
        public static final Ac.b NOCODE_SLOT_DISCARD_EDGES = Ac.c.a("NOCODE_SLOT_DISCARD_EDGES");
        public static final Ac.b NOCODE_SLOT_DOUBLE_SIDED = Ac.c.a("NOCODE_SLOT_DOUBLE_SIDED");
        public static final Ac.b NOCODE_SLOT_DRAW_IN_FRONT = Ac.c.a("NOCODE_SLOT_DRAW_IN_FRONT");
        public static final Ac.b NOCODE_SLOT_EMISSIVE = Ac.c.a("NOCODE_SLOT_EMISSIVE");
        public static final Ac.b NOCODE_SLOT_EMISSIVE_COLOR = Ac.c.a("NOCODE_SLOT_EMISSIVE_COLOR");
        public static final Ac.b NOCODE_SLOT_EMISSIVE_NITS = Ac.c.a("NOCODE_SLOT_EMISSIVE_NITS");
        public static final Ac.b NOCODE_SLOT_HEIGHT = Ac.c.a("NOCODE_SLOT_HEIGHT");
        public static final Ac.b NOCODE_SLOT_HEIGHT_INTENSITY = Ac.c.a("NOCODE_SLOT_HEIGHT_INTENSITY");
        public static final Ac.b NOCODE_SLOT_HEIGHT_QUALITY = Ac.c.a("NOCODE_SLOT_HEIGHT_QUALITY");
        public static final Ac.b NOCODE_SLOT_LIGHT_MAP = Ac.c.a("NOCODE_SLOT_LIGHT_MAP");
        public static final Ac.b NOCODE_SLOT_METALLIC_MAP = Ac.c.a("NOCODE_SLOT_METALLIC_MAP");
        public static final Ac.b NOCODE_SLOT_METALLIC_VALUE = Ac.c.a("NOCODE_SLOT_METALLIC_VALUE");
        public static final Ac.b NOCODE_SLOT_NORMAL_MAP = Ac.c.a("NOCODE_SLOT_NORMAL_MAP");
        public static final Ac.b NOCODE_SLOT_ROUGHNESS_MAP = Ac.c.a("NOCODE_SLOT_ROUGHNESS_MAP");
        public static final Ac.b NOCODE_SLOT_ROUGHNESS_VALUE = Ac.c.a("NOCODE_SLOT_ROUGHNESS_VALUE");
        public static final Ac.b NOCODE_SLOT_WORLD_UV_SIZE = Ac.c.a("NOCODE_SLOT_WORLD_UV_SIZE");
        public static final Ac.b NOCODE_TYPE_BIG_NUMBER = Ac.c.a("NOCODE_TYPE_BIG_NUMBER");
        public static final Ac.b NOCODE_TYPE_NUMBER01 = Ac.c.a("NOCODE_TYPE_NUMBER01");
        public static final Ac.b NOCODE_TYPE_FLOAT2 = Ac.c.a("NOCODE_TYPE_FLOAT2");
        public static final Ac.b NOCODE_TYPE_FLOAT3 = Ac.c.a("NOCODE_TYPE_FLOAT3");
        public static final Ac.b NOCODE_TYPE_FLOAT4 = Ac.c.a("NOCODE_TYPE_FLOAT4");
        public static final Ac.b NOCODE_TYPE_QUATERNION = Ac.c.a("NOCODE_TYPE_QUATERNION");
        public static final Ac.b NOCODE_TYPE_GAME_OBJECT = Ac.c.a("NOCODE_TYPE_GAME_OBJECT");
        public static final Ac.b NOCODE_TYPE_OBJECT_FILE = Ac.c.a("NOCODE_TYPE_OBJECT_FILE");
        public static final Ac.b NOCODE_TYPE_ANIMATION_FILE = Ac.c.a("NOCODE_TYPE_ANIMATION_FILE");
        public static final Ac.b NOCODE_TYPE_ANIMATION_MASK_FILE = Ac.c.a("NOCODE_TYPE_ANIMATION_MASK_FILE");
        public static final Ac.b NOCODE_TYPE_WORLD_FILE = Ac.c.a("NOCODE_TYPE_WORLD_FILE");
        public static final Ac.b NOCODE_TYPE_SOUND_FILE = Ac.c.a("NOCODE_TYPE_SOUND_FILE");
        public static final Ac.b NOCODE_TYPE_ANIMATION = Ac.c.a("NOCODE_TYPE_ANIMATION");
        public static final Ac.b NOCODE_TYPE_ANIMATION_MASK = Ac.c.a("NOCODE_TYPE_ANIMATION_MASK");
        public static final Ac.b NOCODE_TYPE_COLOR_GRADIENT = Ac.c.a("NOCODE_TYPE_COLOR_GRADIENT");
        public static final Ac.b NOCODE_TYPE_BLENDING_MODE = Ac.c.a("NOCODE_TYPE_BLENDING_MODE");
        public static final Ac.b NOCODE_TYPE_UV_SOURCE = Ac.c.a("NOCODE_TYPE_UV_SOURCE");
        public static final Ac.b NOCODE_TYPE_INPUT_DIALOG_TYPE = Ac.c.a("NOCODE_TYPE_INPUT_DIALOG_TYPE");
        public static final Ac.b NOCODE_TYPE_POPUP_DIALOG_TYPE = Ac.c.a("NOCODE_TYPE_POPUP_DIALOG_TYPE");
        public static final Ac.b NOCODE_TYPE_ANY_COMPONENT = Ac.c.a("NOCODE_TYPE_ANY_COMPONENT");
        public static final Ac.b NOCODE_TYPE_NUMBER = Ac.c.a("NOCODE_TYPE_NUMBER");
        public static final Ac.b NOCODE_TYPE_LIST = Ac.c.a("NOCODE_TYPE_LIST");
    }

    public class a implements Runnable {
        @Override
        public void run() {
            Lang.f70086a.set(true);
            SteppedArrayList<c> steppedArrayList = new SteppedArrayList();
            List b10 = Lang.b();
            for (int i10 = 0; i10 < b10.size(); i10++) {
                c i11 = Lang.i((String) b10.get(i10));
                if (i11 != null && i11.c()) {
                    steppedArrayList.add(i11);
                }
            }
            if (steppedArrayList.isEmpty()) {
                Lang.w();
                Lang.u();
                Lang.f70086a.set(false);
                Lang.f70087b.set(true);
                Lang.f70088c.countDown();
                return;
            }
            Log.e("LanguageSystem", "BuiltIn language validation failed for " + steppedArrayList.size() + " language(s)");
            for (c cVar : steppedArrayList) {
                Log.e("LanguageSystem", "BuiltIn language [" + cVar.f70094a + "] issues: " + cVar.b());
            }
            throw new RuntimeException("BuiltIn language validation failed");
        }
    }

    public class b implements Runnable {

        public final String f70093b;

        public b(final String val$language) {
            this.f70093b = val$language;
        }

        @Override
        public void run() {
            Context h10 = Lang.h();
            if (h10 != null) {
                Toast.makeText(h10, "Failed to load language " + this.f70093b + " data is corrupted!", 0).show();
                return;
            }
            Log.e("LanguageSystem", "Failed to load language " + this.f70093b + " data is corrupted!");
        }
    }

    public static class d {

        public final String f70097a;

        public final String f70098b;

        public d(String file, String displayName) {
            this.f70097a = file;
            this.f70098b = displayName;
        }

        public String a() {
            return this.f70098b;
        }

        public String b() {
            return this.f70097a;
        }
    }

    static {
        Thread thread = new Thread(new a());
        thread.setPriority(1);
        thread.start();
        f70086a = new AtomicBoolean(true);
        f70087b = new AtomicBoolean();
        f70088c = new CountDownLatch(1);
        f70089d = new Object();
    }

    public static Context A() {
        if (N7.c.M()) {
            return N7.c.t();
        }
        if (f.c()) {
            return f.b();
        }
        return null;
    }

    public static void B(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (N7.c.M()) {
            N7.c.j0(runnable);
        } else if (f.c()) {
            f.e(runnable);
        } else {
            Log.w("LanguageSystem", "No Main/SideMain available to run UI task.");
        }
    }

    public static void C() {
        synchronized (f70089d) {
            try {
                if (f70090e != null) {
                    X7.a.j(W7.b.f27306f.f2458a.k(A()) + "/settings.config", n().toJson(f70090e));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void D(d language) {
        q().selectedLanguage = language.b();
        C();
    }

    public static String E(Ac.b tag) {
        LanguageData languageData;
        y();
        try {
            LanguageData languageData2 = f70092g;
            Ac.b m10 = languageData2 != null ? languageData2.m(tag) : null;
            if (m10 == null && (languageData = f70091f) != null) {
                m10 = languageData.m(tag);
            }
            if (m10 != null) {
                return m10.toString();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static LanguageData F(String name) {
        try {
            return v(name);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static List b() {
        return t();
    }

    public static Context h() {
        return A();
    }

    public static c i(String name) {
        LanguageData languageData;
        Gson n10 = n();
        String s10 = X7.a.s("@@ASSET@@Editor/Languages/" + name + ".json", A());
        if (s10 == null || s10.isEmpty()) {
            Log.e("LanguageSystem", "Failed to load built-in language " + name);
            return new c(name, "Failed to load built-in language");
        }
        try {
            languageData = (LanguageData) n10.fromJson(s10, LanguageData.class);
        } catch (JsonSyntaxException e10) {
            e10.printStackTrace();
            languageData = null;
        }
        if (languageData == null) {
            Log.e("LanguageSystem", "Invalid built-in language " + name);
            return new c(name, "Invalid built-in language");
        }
        languageData.k(name);
        c cVar = new c(name);
        for (Field field : T.class.getDeclaredFields()) {
            if (Modifier.isStatic(field.getModifiers()) && field.getType() == Ac.b.class) {
                try {
                    Ac.b bVar = (Ac.b) field.get(null);
                    if (!languageData.b(bVar)) {
                        Log.e("LanguageSystem", "BuiltIn language [" + name + "] doesn't explicit declare entry [" + bVar.toString() + "] with hash(" + bVar.hashCode() + ")");
                        cVar.a(bVar.toString());
                    }
                } catch (IllegalAccessException e11) {
                    Log.e("LanguageSystem", "Failed to read language tag for [" + name + "]", e11);
                    cVar.d("Failed to read language tags");
                }
            }
        }
        if (cVar.c()) {
            return cVar;
        }
        C2636o.e(s10, new File(W7.b.f27306f.f2458a.k(A()) + "/" + name + ".json"));
        return new c(name);
    }

    public static Ac.b j(Ac.b tag) {
        LanguageData languageData;
        y();
        try {
            LanguageData languageData2 = f70092g;
            Ac.b m10 = languageData2 != null ? languageData2.m(tag) : null;
            if (m10 == null && (languageData = f70091f) != null) {
                m10 = languageData.m(tag);
            }
            if (m10 != null) {
                return m10;
            }
            throw new RuntimeException("Tag not found " + ((Object) tag) + " at language " + f70092g.f());
        } catch (Exception e10) {
            e10.printStackTrace();
            return new Ac.b("LANG_ERROR:" + e10.getMessage());
        }
    }

    public static void k(Button button, Ac.b tag) {
        y();
        button.setText(l(tag));
    }

    public static String l(Ac.b tag) {
        LanguageData languageData;
        y();
        try {
            LanguageData languageData2 = f70092g;
            Ac.b m10 = languageData2 != null ? languageData2.m(tag) : null;
            if (m10 == null && (languageData = f70091f) != null) {
                m10 = languageData.m(tag);
            }
            if (m10 != null) {
                return m10.toString();
            }
            throw new RuntimeException("Tag not found " + ((Object) tag) + " at language " + f70092g.f());
        } catch (Exception e10) {
            e10.printStackTrace();
            return "LANG_ERROR:" + e10.getMessage();
        }
    }

    public static String m(Ac.b tag) {
        String E10 = E(tag);
        return E10 != null ? E10 : tag != null ? tag.toString() : "LANG_ERROR";
    }

    public static Gson n() {
        return new GsonBuilder().excludeFieldsWithoutExposeAnnotation().serializeSpecialFloatingPointValues().registerTypeAdapter(Ac.b.class, new OHStringSerializer()).setPrettyPrinting().create();
    }

    public static String o() {
        y();
        return p().b();
    }

    public static d p() {
        y();
        return new d(q().selectedLanguage, f70092g.g());
    }

    public static Settings q() {
        Settings settings;
        synchronized (f70089d) {
            try {
                if (f70090e == null) {
                    w();
                }
                settings = f70090e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return settings;
    }

    public static List<String> r() {
        File[] listFiles;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        File file = new File(W7.b.f27306f.f2458a.k(A()) + "/");
        if (file.exists() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                if (file2.getName().endsWith(".json")) {
                    steppedArrayList.add(Tc.b.w(file2.getAbsolutePath(), true));
                }
            }
        }
        return steppedArrayList;
    }

    public static List<d> s() {
        File[] listFiles;
        String w10;
        LanguageData F10;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        File file = new File(W7.b.f27306f.f2458a.k(A()) + "/");
        if (file.exists() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                if (file2.getName().endsWith(".json") && (F10 = F((w10 = Tc.b.w(file2.getAbsolutePath(), true)))) != null) {
                    steppedArrayList.add(new d(w10, F10.g()));
                }
            }
        }
        return steppedArrayList;
    }

    public static List<String> t() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        try {
            Context A10 = A();
            AssetManager assets = A10 != null ? A10.getAssets() : null;
            if (assets != null) {
                String[] list = assets.list("Editor/Languages");
                if (list == null || list.length == 0) {
                    Log.e("LanguageSystem", "Failed to list built-in languages from assets");
                }
                for (String str : list) {
                    if (str != null) {
                        String trim = str.trim();
                        if (trim.endsWith(".json")) {
                            String substring = trim.substring(0, trim.length() - 5);
                            if (!substring.isEmpty()) {
                                steppedArrayList.add(substring);
                            }
                        }
                    }
                }
            }
        } catch (Exception e10) {
            Log.e("LanguageSystem", "Failed to list built-in languages from assets", e10);
        }
        try {
            Collections.sort(steppedArrayList);
        } catch (Exception unused) {
        }
        return steppedArrayList;
    }

    public static void u() {
        Settings settings = f70090e;
        if (settings != null) {
            try {
                x(settings.selectedLanguage);
                return;
            } catch (Exception e10) {
                f70092g = f70091f;
                e10.printStackTrace();
                return;
            }
        }
        try {
            x(Locale.getDefault().toLanguageTag().toLowerCase(Locale.ROOT));
        } catch (Exception e11) {
            f70092g = f70091f;
            e11.printStackTrace();
        }
        f70092g = f70091f;
    }

    public static LanguageData v(String name) {
        Gson n10 = n();
        String z10 = X7.a.z(W7.b.f27306f.f2458a.k(A()) + "/" + name + ".json", A());
        if (z10 == null || z10.isEmpty()) {
            throw new RuntimeException("Failed to load language " + name);
        }
        LanguageData languageData = (LanguageData) n10.fromJson(z10, LanguageData.class);
        if (languageData != null) {
            return languageData;
        }
        throw new RuntimeException("Failed to load language " + name);
    }

    public static void w() {
        String z10 = X7.a.z(W7.b.f27306f.f2458a.k(A()) + "/settings.config", A());
        if (z10 != null && !z10.isEmpty()) {
            try {
                f70090e = (Settings) n().fromJson(z10, Settings.class);
            } catch (Exception e10) {
                e10.printStackTrace();
                f70090e = null;
            }
        }
        if (f70090e == null) {
            f70090e = new Settings();
            X7.a.j(W7.b.f27306f.f2458a.k(A()) + "/settings.config", n().toJson(f70090e));
        }
    }

    public static void x(String wantedLanguage) {
        List<String> r10 = r();
        if (r10 != null) {
            for (String str : r10) {
                if (str.equalsIgnoreCase(wantedLanguage)) {
                    try {
                        f70092g = v(str);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        B(new b(str));
                    }
                }
            }
        }
        try {
            f70091f = v("en-us");
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        if (f70092g != null) {
            return;
        }
        throw new IllegalArgumentException("Failed to load language " + wantedLanguage);
    }

    public static void y() {
        if (f70087b.get()) {
            return;
        }
        try {
            f70088c.await();
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
    }

    public static Activity z() {
        if (N7.c.M()) {
            return N7.c.o();
        }
        if (f.c()) {
            return f.a();
        }
        return null;
    }

    public static class c {

        public final String f70094a;

        public final List<String> f70095b = new SteppedArrayList();

        public String f70096c;

        public c(String name) {
            this.f70094a = name;
        }

        public void a(String entry) {
            this.f70095b.add(entry);
        }

        public String b() {
            StringBuilder sb2 = new StringBuilder();
            String str = this.f70096c;
            if (str != null && !str.isEmpty()) {
                sb2.append(this.f70096c);
            }
            if (!this.f70095b.isEmpty()) {
                if (sb2.length() > 0) {
                    sb2.append(" | ");
                }
                sb2.append("missing ");
                sb2.append(this.f70095b.size());
                sb2.append(": ");
                for (int i10 = 0; i10 < this.f70095b.size(); i10++) {
                    if (i10 > 0) {
                        sb2.append(", ");
                    }
                    sb2.append(this.f70095b.get(i10));
                }
            }
            return sb2.toString();
        }

        public boolean c() {
            String str = this.f70096c;
            return ((str == null || str.isEmpty()) && this.f70095b.isEmpty()) ? false : true;
        }

        public void d(String error) {
            String str = this.f70096c;
            if (str == null || str.isEmpty()) {
                this.f70096c = error;
            }
        }

        public c(String name, String error) {
            this.f70094a = name;
            this.f70096c = error;
        }
    }
}
