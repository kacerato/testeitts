package androidx.exifinterface.media;

import Sg.b;
import android.bluetooth.BluetoothClass;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.location.Location;
import android.opengl.GLES30;
import android.util.Log;
import android.util.Pair;
import android.view.KeyEvent;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser;
import com.tonyodev.fetch2.util.FetchDefaults;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.CharEncoding;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.openjdk.tools.doclint.DocLint;
import w2.C15883c;

public class ExifInterface {
    public static final short ALTITUDE_ABOVE_SEA_LEVEL = 0;
    public static final short ALTITUDE_BELOW_SEA_LEVEL = 1;
    static final Charset ASCII;
    static final short BYTE_ALIGN_II = 18761;
    static final short BYTE_ALIGN_MM = 19789;
    public static final int COLOR_SPACE_S_RGB = 1;
    public static final int COLOR_SPACE_UNCALIBRATED = 65535;
    public static final short CONTRAST_HARD = 2;
    public static final short CONTRAST_NORMAL = 0;
    public static final short CONTRAST_SOFT = 1;
    public static final int DATA_DEFLATE_ZIP = 8;
    public static final int DATA_HUFFMAN_COMPRESSED = 2;
    public static final int DATA_JPEG = 6;
    public static final int DATA_JPEG_COMPRESSED = 7;
    public static final int DATA_LOSSY_JPEG = 34892;
    public static final int DATA_PACK_BITS_COMPRESSED = 32773;
    public static final int DATA_UNCOMPRESSED = 1;
    private static final boolean DEBUG = false;
    private static final ExifTag[] EXIF_POINTER_TAGS;
    static final ExifTag[][] EXIF_TAGS;
    public static final short EXPOSURE_MODE_AUTO = 0;
    public static final short EXPOSURE_MODE_AUTO_BRACKET = 2;
    public static final short EXPOSURE_MODE_MANUAL = 1;
    public static final short EXPOSURE_PROGRAM_ACTION = 6;
    public static final short EXPOSURE_PROGRAM_APERTURE_PRIORITY = 3;
    public static final short EXPOSURE_PROGRAM_CREATIVE = 5;
    public static final short EXPOSURE_PROGRAM_LANDSCAPE_MODE = 8;
    public static final short EXPOSURE_PROGRAM_MANUAL = 1;
    public static final short EXPOSURE_PROGRAM_NORMAL = 2;
    public static final short EXPOSURE_PROGRAM_NOT_DEFINED = 0;
    public static final short EXPOSURE_PROGRAM_PORTRAIT_MODE = 7;
    public static final short EXPOSURE_PROGRAM_SHUTTER_PRIORITY = 4;
    public static final short FILE_SOURCE_DSC = 3;
    public static final short FILE_SOURCE_OTHER = 0;
    public static final short FILE_SOURCE_REFLEX_SCANNER = 2;
    public static final short FILE_SOURCE_TRANSPARENT_SCANNER = 1;
    public static final short FLAG_FLASH_FIRED = 1;
    public static final short FLAG_FLASH_MODE_AUTO = 24;
    public static final short FLAG_FLASH_MODE_COMPULSORY_FIRING = 8;
    public static final short FLAG_FLASH_MODE_COMPULSORY_SUPPRESSION = 16;
    public static final short FLAG_FLASH_NO_FLASH_FUNCTION = 32;
    public static final short FLAG_FLASH_RED_EYE_SUPPORTED = 64;
    public static final short FLAG_FLASH_RETURN_LIGHT_DETECTED = 6;
    public static final short FLAG_FLASH_RETURN_LIGHT_NOT_DETECTED = 4;
    public static final short FORMAT_CHUNKY = 1;
    public static final short FORMAT_PLANAR = 2;
    public static final short GAIN_CONTROL_HIGH_GAIN_DOWN = 4;
    public static final short GAIN_CONTROL_HIGH_GAIN_UP = 2;
    public static final short GAIN_CONTROL_LOW_GAIN_DOWN = 3;
    public static final short GAIN_CONTROL_LOW_GAIN_UP = 1;
    public static final short GAIN_CONTROL_NONE = 0;
    public static final String GPS_DIRECTION_MAGNETIC = "M";
    public static final String GPS_DIRECTION_TRUE = "T";
    public static final String GPS_DISTANCE_KILOMETERS = "K";
    public static final String GPS_DISTANCE_MILES = "M";
    public static final String GPS_DISTANCE_NAUTICAL_MILES = "N";
    public static final String GPS_MEASUREMENT_2D = "2";
    public static final String GPS_MEASUREMENT_3D = "3";
    public static final short GPS_MEASUREMENT_DIFFERENTIAL_CORRECTED = 1;
    public static final String GPS_MEASUREMENT_INTERRUPTED = "V";
    public static final String GPS_MEASUREMENT_IN_PROGRESS = "A";
    public static final short GPS_MEASUREMENT_NO_DIFFERENTIAL = 0;
    public static final String GPS_SPEED_KILOMETERS_PER_HOUR = "K";
    public static final String GPS_SPEED_KNOTS = "N";
    public static final String GPS_SPEED_MILES_PER_HOUR = "M";
    static final byte[] IDENTIFIER_EXIF_APP1;
    private static final ExifTag[] IFD_EXIF_TAGS;
    private static final int IFD_FORMAT_BYTE = 1;
    private static final int IFD_FORMAT_DOUBLE = 12;
    private static final int IFD_FORMAT_IFD = 13;
    private static final int IFD_FORMAT_SBYTE = 6;
    private static final int IFD_FORMAT_SINGLE = 11;
    private static final int IFD_FORMAT_SLONG = 9;
    private static final int IFD_FORMAT_SRATIONAL = 10;
    private static final int IFD_FORMAT_SSHORT = 8;
    private static final int IFD_FORMAT_STRING = 2;
    private static final int IFD_FORMAT_ULONG = 4;
    private static final int IFD_FORMAT_UNDEFINED = 7;
    private static final int IFD_FORMAT_URATIONAL = 5;
    private static final int IFD_FORMAT_USHORT = 3;
    private static final ExifTag[] IFD_GPS_TAGS;
    private static final ExifTag[] IFD_INTEROPERABILITY_TAGS;
    private static final int IFD_OFFSET = 8;
    private static final ExifTag[] IFD_THUMBNAIL_TAGS;
    private static final ExifTag[] IFD_TIFF_TAGS;
    private static final int IFD_TYPE_EXIF = 1;
    private static final int IFD_TYPE_GPS = 2;
    private static final int IFD_TYPE_INTEROPERABILITY = 3;
    private static final int IFD_TYPE_ORF_CAMERA_SETTINGS = 7;
    private static final int IFD_TYPE_ORF_IMAGE_PROCESSING = 8;
    private static final int IFD_TYPE_ORF_MAKER_NOTE = 6;
    private static final int IFD_TYPE_PEF = 9;
    static final int IFD_TYPE_PREVIEW = 5;
    static final int IFD_TYPE_PRIMARY = 0;
    static final int IFD_TYPE_THUMBNAIL = 4;
    private static final int IMAGE_TYPE_ARW = 1;
    private static final int IMAGE_TYPE_CR2 = 2;
    private static final int IMAGE_TYPE_DNG = 3;
    private static final int IMAGE_TYPE_JPEG = 4;
    private static final int IMAGE_TYPE_NEF = 5;
    private static final int IMAGE_TYPE_NRW = 6;
    private static final int IMAGE_TYPE_ORF = 7;
    private static final int IMAGE_TYPE_PEF = 8;
    private static final int IMAGE_TYPE_RAF = 9;
    private static final int IMAGE_TYPE_RW2 = 10;
    private static final int IMAGE_TYPE_SRW = 11;
    private static final int IMAGE_TYPE_UNKNOWN = 0;
    private static final ExifTag JPEG_INTERCHANGE_FORMAT_LENGTH_TAG;
    private static final ExifTag JPEG_INTERCHANGE_FORMAT_TAG;
    public static final String LATITUDE_NORTH = "N";
    public static final String LATITUDE_SOUTH = "S";
    public static final short LIGHT_SOURCE_CLOUDY_WEATHER = 10;
    public static final short LIGHT_SOURCE_COOL_WHITE_FLUORESCENT = 14;
    public static final short LIGHT_SOURCE_D50 = 23;
    public static final short LIGHT_SOURCE_D55 = 20;
    public static final short LIGHT_SOURCE_D65 = 21;
    public static final short LIGHT_SOURCE_D75 = 22;
    public static final short LIGHT_SOURCE_DAYLIGHT = 1;
    public static final short LIGHT_SOURCE_DAYLIGHT_FLUORESCENT = 12;
    public static final short LIGHT_SOURCE_DAY_WHITE_FLUORESCENT = 13;
    public static final short LIGHT_SOURCE_FINE_WEATHER = 9;
    public static final short LIGHT_SOURCE_FLASH = 4;
    public static final short LIGHT_SOURCE_FLUORESCENT = 2;
    public static final short LIGHT_SOURCE_ISO_STUDIO_TUNGSTEN = 24;
    public static final short LIGHT_SOURCE_OTHER = 255;
    public static final short LIGHT_SOURCE_SHADE = 11;
    public static final short LIGHT_SOURCE_STANDARD_LIGHT_A = 17;
    public static final short LIGHT_SOURCE_STANDARD_LIGHT_B = 18;
    public static final short LIGHT_SOURCE_STANDARD_LIGHT_C = 19;
    public static final short LIGHT_SOURCE_TUNGSTEN = 3;
    public static final short LIGHT_SOURCE_UNKNOWN = 0;
    public static final short LIGHT_SOURCE_WARM_WHITE_FLUORESCENT = 16;
    public static final short LIGHT_SOURCE_WHITE_FLUORESCENT = 15;
    public static final String LONGITUDE_EAST = "E";
    public static final String LONGITUDE_WEST = "W";
    static final byte MARKER = -1;
    static final byte MARKER_APP1 = -31;
    private static final byte MARKER_COM = -2;
    static final byte MARKER_EOI = -39;
    private static final byte MARKER_SOF0 = -64;
    private static final byte MARKER_SOF1 = -63;
    private static final byte MARKER_SOF10 = -54;
    private static final byte MARKER_SOF11 = -53;
    private static final byte MARKER_SOF13 = -51;
    private static final byte MARKER_SOF14 = -50;
    private static final byte MARKER_SOF15 = -49;
    private static final byte MARKER_SOF2 = -62;
    private static final byte MARKER_SOF3 = -61;
    private static final byte MARKER_SOF5 = -59;
    private static final byte MARKER_SOF6 = -58;
    private static final byte MARKER_SOF7 = -57;
    private static final byte MARKER_SOF9 = -55;
    private static final byte MARKER_SOS = -38;
    private static final int MAX_THUMBNAIL_SIZE = 512;
    public static final short METERING_MODE_AVERAGE = 1;
    public static final short METERING_MODE_CENTER_WEIGHT_AVERAGE = 2;
    public static final short METERING_MODE_MULTI_SPOT = 4;
    public static final short METERING_MODE_OTHER = 255;
    public static final short METERING_MODE_PARTIAL = 6;
    public static final short METERING_MODE_PATTERN = 5;
    public static final short METERING_MODE_SPOT = 3;
    public static final short METERING_MODE_UNKNOWN = 0;
    private static final ExifTag[] ORF_CAMERA_SETTINGS_TAGS;
    private static final ExifTag[] ORF_IMAGE_PROCESSING_TAGS;
    private static final int ORF_MAKER_NOTE_HEADER_1_SIZE = 8;
    private static final int ORF_MAKER_NOTE_HEADER_2_SIZE = 12;
    private static final ExifTag[] ORF_MAKER_NOTE_TAGS;
    private static final short ORF_SIGNATURE_1 = 20306;
    private static final short ORF_SIGNATURE_2 = 21330;
    public static final int ORIENTATION_FLIP_HORIZONTAL = 2;
    public static final int ORIENTATION_FLIP_VERTICAL = 4;
    public static final int ORIENTATION_NORMAL = 1;
    public static final int ORIENTATION_ROTATE_180 = 3;
    public static final int ORIENTATION_ROTATE_270 = 8;
    public static final int ORIENTATION_ROTATE_90 = 6;
    public static final int ORIENTATION_TRANSPOSE = 5;
    public static final int ORIENTATION_TRANSVERSE = 7;
    public static final int ORIENTATION_UNDEFINED = 0;
    public static final int ORIGINAL_RESOLUTION_IMAGE = 0;
    private static final int PEF_MAKER_NOTE_SKIP_SIZE = 6;
    private static final String PEF_SIGNATURE = "PENTAX";
    private static final ExifTag[] PEF_TAGS;
    public static final int PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO = 1;
    public static final int PHOTOMETRIC_INTERPRETATION_RGB = 2;
    public static final int PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO = 0;
    public static final int PHOTOMETRIC_INTERPRETATION_YCBCR = 6;
    private static final int RAF_INFO_SIZE = 160;
    private static final int RAF_JPEG_LENGTH_VALUE_SIZE = 4;
    private static final int RAF_OFFSET_TO_JPEG_IMAGE_OFFSET = 84;
    private static final String RAF_SIGNATURE = "FUJIFILMCCD-RAW";
    public static final int REDUCED_RESOLUTION_IMAGE = 1;
    public static final short RENDERED_PROCESS_CUSTOM = 1;
    public static final short RENDERED_PROCESS_NORMAL = 0;
    public static final short RESOLUTION_UNIT_CENTIMETERS = 3;
    public static final short RESOLUTION_UNIT_INCHES = 2;
    private static final short RW2_SIGNATURE = 85;
    public static final short SATURATION_HIGH = 0;
    public static final short SATURATION_LOW = 0;
    public static final short SATURATION_NORMAL = 0;
    public static final short SCENE_CAPTURE_TYPE_LANDSCAPE = 1;
    public static final short SCENE_CAPTURE_TYPE_NIGHT = 3;
    public static final short SCENE_CAPTURE_TYPE_PORTRAIT = 2;
    public static final short SCENE_CAPTURE_TYPE_STANDARD = 0;
    public static final short SCENE_TYPE_DIRECTLY_PHOTOGRAPHED = 1;
    public static final short SENSITIVITY_TYPE_ISO_SPEED = 3;
    public static final short SENSITIVITY_TYPE_REI = 2;
    public static final short SENSITIVITY_TYPE_REI_AND_ISO = 6;
    public static final short SENSITIVITY_TYPE_SOS = 1;
    public static final short SENSITIVITY_TYPE_SOS_AND_ISO = 5;
    public static final short SENSITIVITY_TYPE_SOS_AND_REI = 4;
    public static final short SENSITIVITY_TYPE_SOS_AND_REI_AND_ISO = 7;
    public static final short SENSITIVITY_TYPE_UNKNOWN = 0;
    public static final short SENSOR_TYPE_COLOR_SEQUENTIAL = 5;
    public static final short SENSOR_TYPE_COLOR_SEQUENTIAL_LINEAR = 8;
    public static final short SENSOR_TYPE_NOT_DEFINED = 1;
    public static final short SENSOR_TYPE_ONE_CHIP = 2;
    public static final short SENSOR_TYPE_THREE_CHIP = 4;
    public static final short SENSOR_TYPE_TRILINEAR = 7;
    public static final short SENSOR_TYPE_TWO_CHIP = 3;
    public static final short SHARPNESS_HARD = 2;
    public static final short SHARPNESS_NORMAL = 0;
    public static final short SHARPNESS_SOFT = 1;
    private static final int SIGNATURE_CHECK_SIZE = 5000;
    static final byte START_CODE = 42;
    public static final short SUBJECT_DISTANCE_RANGE_CLOSE_VIEW = 2;
    public static final short SUBJECT_DISTANCE_RANGE_DISTANT_VIEW = 3;
    public static final short SUBJECT_DISTANCE_RANGE_MACRO = 1;
    public static final short SUBJECT_DISTANCE_RANGE_UNKNOWN = 0;
    private static final String TAG = "ExifInterface";
    public static final String TAG_APERTURE_VALUE = "ApertureValue";
    public static final String TAG_ARTIST = "Artist";
    public static final String TAG_BITS_PER_SAMPLE = "BitsPerSample";
    public static final String TAG_BODY_SERIAL_NUMBER = "BodySerialNumber";
    public static final String TAG_BRIGHTNESS_VALUE = "BrightnessValue";
    public static final String TAG_CAMARA_OWNER_NAME = "CameraOwnerName";
    public static final String TAG_CFA_PATTERN = "CFAPattern";
    public static final String TAG_COLOR_SPACE = "ColorSpace";
    public static final String TAG_COMPONENTS_CONFIGURATION = "ComponentsConfiguration";
    public static final String TAG_COMPRESSED_BITS_PER_PIXEL = "CompressedBitsPerPixel";
    public static final String TAG_COMPRESSION = "Compression";
    public static final String TAG_CONTRAST = "Contrast";
    public static final String TAG_COPYRIGHT = "Copyright";
    public static final String TAG_CUSTOM_RENDERED = "CustomRendered";
    public static final String TAG_DATETIME = "DateTime";
    public static final String TAG_DATETIME_DIGITIZED = "DateTimeDigitized";
    public static final String TAG_DATETIME_ORIGINAL = "DateTimeOriginal";
    public static final String TAG_DEFAULT_CROP_SIZE = "DefaultCropSize";
    public static final String TAG_DEVICE_SETTING_DESCRIPTION = "DeviceSettingDescription";
    public static final String TAG_DIGITAL_ZOOM_RATIO = "DigitalZoomRatio";
    public static final String TAG_DNG_VERSION = "DNGVersion";
    private static final String TAG_EXIF_IFD_POINTER = "ExifIFDPointer";
    public static final String TAG_EXIF_VERSION = "ExifVersion";
    public static final String TAG_EXPOSURE_BIAS_VALUE = "ExposureBiasValue";
    public static final String TAG_EXPOSURE_INDEX = "ExposureIndex";
    public static final String TAG_EXPOSURE_MODE = "ExposureMode";
    public static final String TAG_EXPOSURE_PROGRAM = "ExposureProgram";
    public static final String TAG_EXPOSURE_TIME = "ExposureTime";
    public static final String TAG_FILE_SOURCE = "FileSource";
    public static final String TAG_FLASH = "Flash";
    public static final String TAG_FLASHPIX_VERSION = "FlashpixVersion";
    public static final String TAG_FLASH_ENERGY = "FlashEnergy";
    public static final String TAG_FOCAL_LENGTH = "FocalLength";
    public static final String TAG_FOCAL_LENGTH_IN_35MM_FILM = "FocalLengthIn35mmFilm";
    public static final String TAG_FOCAL_PLANE_RESOLUTION_UNIT = "FocalPlaneResolutionUnit";
    public static final String TAG_FOCAL_PLANE_X_RESOLUTION = "FocalPlaneXResolution";
    public static final String TAG_FOCAL_PLANE_Y_RESOLUTION = "FocalPlaneYResolution";
    public static final String TAG_F_NUMBER = "FNumber";
    public static final String TAG_GAIN_CONTROL = "GainControl";
    public static final String TAG_GAMMA = "Gamma";
    public static final String TAG_GPS_ALTITUDE = "GPSAltitude";
    public static final String TAG_GPS_ALTITUDE_REF = "GPSAltitudeRef";
    public static final String TAG_GPS_AREA_INFORMATION = "GPSAreaInformation";
    public static final String TAG_GPS_DATESTAMP = "GPSDateStamp";
    public static final String TAG_GPS_DEST_BEARING = "GPSDestBearing";
    public static final String TAG_GPS_DEST_BEARING_REF = "GPSDestBearingRef";
    public static final String TAG_GPS_DEST_DISTANCE = "GPSDestDistance";
    public static final String TAG_GPS_DEST_DISTANCE_REF = "GPSDestDistanceRef";
    public static final String TAG_GPS_DEST_LATITUDE = "GPSDestLatitude";
    public static final String TAG_GPS_DEST_LATITUDE_REF = "GPSDestLatitudeRef";
    public static final String TAG_GPS_DEST_LONGITUDE = "GPSDestLongitude";
    public static final String TAG_GPS_DEST_LONGITUDE_REF = "GPSDestLongitudeRef";
    public static final String TAG_GPS_DIFFERENTIAL = "GPSDifferential";
    public static final String TAG_GPS_DOP = "GPSDOP";
    public static final String TAG_GPS_H_POSITIONING_ERROR = "GPSHPositioningError";
    public static final String TAG_GPS_IMG_DIRECTION = "GPSImgDirection";
    public static final String TAG_GPS_IMG_DIRECTION_REF = "GPSImgDirectionRef";
    private static final String TAG_GPS_INFO_IFD_POINTER = "GPSInfoIFDPointer";
    public static final String TAG_GPS_LATITUDE = "GPSLatitude";
    public static final String TAG_GPS_LATITUDE_REF = "GPSLatitudeRef";
    public static final String TAG_GPS_LONGITUDE = "GPSLongitude";
    public static final String TAG_GPS_LONGITUDE_REF = "GPSLongitudeRef";
    public static final String TAG_GPS_MAP_DATUM = "GPSMapDatum";
    public static final String TAG_GPS_MEASURE_MODE = "GPSMeasureMode";
    public static final String TAG_GPS_PROCESSING_METHOD = "GPSProcessingMethod";
    public static final String TAG_GPS_SATELLITES = "GPSSatellites";
    public static final String TAG_GPS_SPEED = "GPSSpeed";
    public static final String TAG_GPS_SPEED_REF = "GPSSpeedRef";
    public static final String TAG_GPS_STATUS = "GPSStatus";
    public static final String TAG_GPS_TIMESTAMP = "GPSTimeStamp";
    public static final String TAG_GPS_TRACK = "GPSTrack";
    public static final String TAG_GPS_TRACK_REF = "GPSTrackRef";
    public static final String TAG_GPS_VERSION_ID = "GPSVersionID";
    private static final String TAG_HAS_THUMBNAIL = "HasThumbnail";
    public static final String TAG_IMAGE_DESCRIPTION = "ImageDescription";
    public static final String TAG_IMAGE_LENGTH = "ImageLength";
    public static final String TAG_IMAGE_UNIQUE_ID = "ImageUniqueID";
    public static final String TAG_IMAGE_WIDTH = "ImageWidth";
    private static final String TAG_INTEROPERABILITY_IFD_POINTER = "InteroperabilityIFDPointer";
    public static final String TAG_INTEROPERABILITY_INDEX = "InteroperabilityIndex";
    public static final String TAG_ISO_SPEED = "ISOSpeed";
    public static final String TAG_ISO_SPEED_LATITUDE_YYY = "ISOSpeedLatitudeyyy";
    public static final String TAG_ISO_SPEED_LATITUDE_ZZZ = "ISOSpeedLatitudezzz";

    @Deprecated
    public static final String TAG_ISO_SPEED_RATINGS = "ISOSpeedRatings";
    public static final String TAG_JPEG_INTERCHANGE_FORMAT = "JPEGInterchangeFormat";
    public static final String TAG_JPEG_INTERCHANGE_FORMAT_LENGTH = "JPEGInterchangeFormatLength";
    public static final String TAG_LENS_MAKE = "LensMake";
    public static final String TAG_LENS_MODEL = "LensModel";
    public static final String TAG_LENS_SERIAL_NUMBER = "LensSerialNumber";
    public static final String TAG_LENS_SPECIFICATION = "LensSpecification";
    public static final String TAG_LIGHT_SOURCE = "LightSource";
    public static final String TAG_MAKE = "Make";
    public static final String TAG_MAKER_NOTE = "MakerNote";
    public static final String TAG_MAX_APERTURE_VALUE = "MaxApertureValue";
    public static final String TAG_METERING_MODE = "MeteringMode";
    public static final String TAG_MODEL = "Model";
    public static final String TAG_NEW_SUBFILE_TYPE = "NewSubfileType";
    public static final String TAG_OECF = "OECF";
    public static final String TAG_ORF_ASPECT_FRAME = "AspectFrame";
    private static final String TAG_ORF_CAMERA_SETTINGS_IFD_POINTER = "CameraSettingsIFDPointer";
    private static final String TAG_ORF_IMAGE_PROCESSING_IFD_POINTER = "ImageProcessingIFDPointer";
    public static final String TAG_ORF_PREVIEW_IMAGE_LENGTH = "PreviewImageLength";
    public static final String TAG_ORF_PREVIEW_IMAGE_START = "PreviewImageStart";
    public static final String TAG_ORF_THUMBNAIL_IMAGE = "ThumbnailImage";
    public static final String TAG_ORIENTATION = "Orientation";
    public static final String TAG_PHOTOGRAPHIC_SENSITIVITY = "PhotographicSensitivity";
    public static final String TAG_PHOTOMETRIC_INTERPRETATION = "PhotometricInterpretation";
    public static final String TAG_PIXEL_X_DIMENSION = "PixelXDimension";
    public static final String TAG_PIXEL_Y_DIMENSION = "PixelYDimension";
    public static final String TAG_PLANAR_CONFIGURATION = "PlanarConfiguration";
    public static final String TAG_PRIMARY_CHROMATICITIES = "PrimaryChromaticities";
    private static final ExifTag TAG_RAF_IMAGE_SIZE;
    public static final String TAG_RECOMMENDED_EXPOSURE_INDEX = "RecommendedExposureIndex";
    public static final String TAG_REFERENCE_BLACK_WHITE = "ReferenceBlackWhite";
    public static final String TAG_RELATED_SOUND_FILE = "RelatedSoundFile";
    public static final String TAG_RESOLUTION_UNIT = "ResolutionUnit";
    public static final String TAG_ROWS_PER_STRIP = "RowsPerStrip";
    public static final String TAG_RW2_ISO = "ISO";
    public static final String TAG_RW2_JPG_FROM_RAW = "JpgFromRaw";
    public static final String TAG_RW2_SENSOR_BOTTOM_BORDER = "SensorBottomBorder";
    public static final String TAG_RW2_SENSOR_LEFT_BORDER = "SensorLeftBorder";
    public static final String TAG_RW2_SENSOR_RIGHT_BORDER = "SensorRightBorder";
    public static final String TAG_RW2_SENSOR_TOP_BORDER = "SensorTopBorder";
    public static final String TAG_SAMPLES_PER_PIXEL = "SamplesPerPixel";
    public static final String TAG_SATURATION = "Saturation";
    public static final String TAG_SCENE_CAPTURE_TYPE = "SceneCaptureType";
    public static final String TAG_SCENE_TYPE = "SceneType";
    public static final String TAG_SENSING_METHOD = "SensingMethod";
    public static final String TAG_SENSITIVITY_TYPE = "SensitivityType";
    public static final String TAG_SHARPNESS = "Sharpness";
    public static final String TAG_SHUTTER_SPEED_VALUE = "ShutterSpeedValue";
    public static final String TAG_SOFTWARE = "Software";
    public static final String TAG_SPATIAL_FREQUENCY_RESPONSE = "SpatialFrequencyResponse";
    public static final String TAG_SPECTRAL_SENSITIVITY = "SpectralSensitivity";
    public static final String TAG_STANDARD_OUTPUT_SENSITIVITY = "StandardOutputSensitivity";
    public static final String TAG_STRIP_BYTE_COUNTS = "StripByteCounts";
    public static final String TAG_STRIP_OFFSETS = "StripOffsets";
    public static final String TAG_SUBFILE_TYPE = "SubfileType";
    public static final String TAG_SUBJECT_AREA = "SubjectArea";
    public static final String TAG_SUBJECT_DISTANCE = "SubjectDistance";
    public static final String TAG_SUBJECT_DISTANCE_RANGE = "SubjectDistanceRange";
    public static final String TAG_SUBJECT_LOCATION = "SubjectLocation";
    public static final String TAG_SUBSEC_TIME = "SubSecTime";
    public static final String TAG_SUBSEC_TIME_DIGITIZED = "SubSecTimeDigitized";
    public static final String TAG_SUBSEC_TIME_ORIGINAL = "SubSecTimeOriginal";
    private static final String TAG_SUB_IFD_POINTER = "SubIFDPointer";
    private static final String TAG_THUMBNAIL_DATA = "ThumbnailData";
    public static final String TAG_THUMBNAIL_IMAGE_LENGTH = "ThumbnailImageLength";
    public static final String TAG_THUMBNAIL_IMAGE_WIDTH = "ThumbnailImageWidth";
    private static final String TAG_THUMBNAIL_LENGTH = "ThumbnailLength";
    private static final String TAG_THUMBNAIL_OFFSET = "ThumbnailOffset";
    public static final String TAG_TRANSFER_FUNCTION = "TransferFunction";
    public static final String TAG_USER_COMMENT = "UserComment";
    public static final String TAG_WHITE_BALANCE = "WhiteBalance";
    public static final String TAG_WHITE_POINT = "WhitePoint";
    public static final String TAG_X_RESOLUTION = "XResolution";
    public static final String TAG_Y_CB_CR_COEFFICIENTS = "YCbCrCoefficients";
    public static final String TAG_Y_CB_CR_POSITIONING = "YCbCrPositioning";
    public static final String TAG_Y_CB_CR_SUB_SAMPLING = "YCbCrSubSampling";
    public static final String TAG_Y_RESOLUTION = "YResolution";

    @Deprecated
    public static final int WHITEBALANCE_AUTO = 0;

    @Deprecated
    public static final int WHITEBALANCE_MANUAL = 1;
    public static final short WHITE_BALANCE_AUTO = 0;
    public static final short WHITE_BALANCE_MANUAL = 1;
    public static final short Y_CB_CR_POSITIONING_CENTERED = 1;
    public static final short Y_CB_CR_POSITIONING_CO_SITED = 2;
    private static final HashMap<Integer, Integer> sExifPointerTagMap;
    private static final HashMap<Integer, ExifTag>[] sExifTagMapsForReading;
    private static final HashMap<String, ExifTag>[] sExifTagMapsForWriting;
    private static SimpleDateFormat sFormatter;
    private static final Pattern sGpsTimestampPattern;
    private static final Pattern sNonZeroTimePattern;
    private static final HashSet<String> sTagSetForCompatibility;
    private final AssetManager.AssetInputStream mAssetInputStream;
    private final HashMap<String, ExifAttribute>[] mAttributes;
    private Set<Integer> mAttributesOffsets;
    private ByteOrder mExifByteOrder;
    private int mExifOffset;
    private final String mFilename;
    private boolean mHasThumbnail;
    private boolean mIsSupportedFile;
    private int mMimeType;
    private int mOrfMakerNoteOffset;
    private int mOrfThumbnailLength;
    private int mOrfThumbnailOffset;
    private int mRw2JpgFromRawOffset;
    private byte[] mThumbnailBytes;
    private int mThumbnailCompression;
    private int mThumbnailLength;
    private int mThumbnailOffset;
    private static final List<Integer> ROTATION_ORDER = Arrays.asList(1, 6, 3, 8);
    private static final List<Integer> FLIPPED_ROTATION_ORDER = Arrays.asList(2, 7, 4, 5);
    public static final int[] BITS_PER_SAMPLE_RGB = {8, 8, 8};
    public static final int[] BITS_PER_SAMPLE_GREYSCALE_1 = {4};
    public static final int[] BITS_PER_SAMPLE_GREYSCALE_2 = {8};
    private static final byte MARKER_SOI = -40;
    static final byte[] JPEG_SIGNATURE = {-1, MARKER_SOI, -1};
    private static final byte[] ORF_MAKER_NOTE_HEADER_1 = {Opcodes.OPC_iastore, Opcodes.OPC_astore_1, Opcodes.OPC_dup, Opcodes.OPC_astore_2, 80, 0};
    private static final byte[] ORF_MAKER_NOTE_HEADER_2 = {Opcodes.OPC_iastore, Opcodes.OPC_astore_1, Opcodes.OPC_dup, Opcodes.OPC_astore_2, 80, Opcodes.OPC_castore, Opcodes.OPC_aastore, 0, Opcodes.OPC_dstore_2, Opcodes.OPC_dstore_2};
    static final String[] IFD_FORMAT_NAMES = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE"};
    static final int[] IFD_FORMAT_BYTES_PER_FORMAT = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
    static final byte[] EXIF_ASCII_PREFIX = {Opcodes.OPC_lstore_2, Opcodes.OPC_aastore, Opcodes.OPC_fstore_0, Opcodes.OPC_dstore_2, Opcodes.OPC_dstore_2, 0, 0, 0};

    public static class ByteOrderedDataOutputStream extends FilterOutputStream {
        private ByteOrder mByteOrder;
        private final OutputStream mOutputStream;

        public ByteOrderedDataOutputStream(OutputStream outputStream, ByteOrder byteOrder) {
            super(outputStream);
            this.mOutputStream = outputStream;
            this.mByteOrder = byteOrder;
        }

        public void setByteOrder(ByteOrder byteOrder) {
            this.mByteOrder = byteOrder;
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            this.mOutputStream.write(bArr);
        }

        public void writeByte(int i10) throws IOException {
            this.mOutputStream.write(i10);
        }

        public void writeInt(int i10) throws IOException {
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.mOutputStream.write(i10 & 255);
                this.mOutputStream.write((i10 >>> 8) & 255);
                this.mOutputStream.write((i10 >>> 16) & 255);
                this.mOutputStream.write((i10 >>> 24) & 255);
                return;
            }
            if (byteOrder == ByteOrder.BIG_ENDIAN) {
                this.mOutputStream.write((i10 >>> 24) & 255);
                this.mOutputStream.write((i10 >>> 16) & 255);
                this.mOutputStream.write((i10 >>> 8) & 255);
                this.mOutputStream.write(i10 & 255);
            }
        }

        public void writeShort(short s10) throws IOException {
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
                this.mOutputStream.write(s10 & 255);
                this.mOutputStream.write((s10 >>> 8) & 255);
            } else if (byteOrder == ByteOrder.BIG_ENDIAN) {
                this.mOutputStream.write((s10 >>> 8) & 255);
                this.mOutputStream.write(s10 & 255);
            }
        }

        public void writeUnsignedInt(long j10) throws IOException {
            writeInt((int) j10);
        }

        public void writeUnsignedShort(int i10) throws IOException {
            writeShort((short) i10);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.mOutputStream.write(bArr, i10, i11);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface IfdType {
    }

    public static class Rational {
        public final long denominator;
        public final long numerator;

        public Rational(double d10) {
            this((long) (d10 * 10000.0d), FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER);
        }

        public double calculate() {
            return this.numerator / this.denominator;
        }

        public String toString() {
            return this.numerator + "/" + this.denominator;
        }

        public Rational(long j10, long j11) {
            if (j11 == 0) {
                this.numerator = 0L;
                this.denominator = 1L;
            } else {
                this.numerator = j10;
                this.denominator = j11;
            }
        }
    }

    static {
        ExifTag[] exifTagArr = {new ExifTag("NewSubfileType", 254, 4), new ExifTag("SubfileType", 255, 4), new ExifTag("ImageWidth", 256, 3, 4), new ExifTag("ImageLength", 257, 3, 4), new ExifTag("BitsPerSample", 258, 3), new ExifTag("Compression", 259, 3), new ExifTag("PhotometricInterpretation", 262, 3), new ExifTag("ImageDescription", 270, 2), new ExifTag("Make", 271, 2), new ExifTag("Model", 272, 2), new ExifTag("StripOffsets", 273, 3, 4), new ExifTag("Orientation", 274, 3), new ExifTag("SamplesPerPixel", 277, 3), new ExifTag("RowsPerStrip", KeyEvent.KEYCODE_COPY, 3, 4), new ExifTag("StripByteCounts", KeyEvent.KEYCODE_PASTE, 3, 4), new ExifTag("XResolution", KeyEvent.KEYCODE_SYSTEM_NAVIGATION_LEFT, 5), new ExifTag("YResolution", KeyEvent.KEYCODE_SYSTEM_NAVIGATION_RIGHT, 5), new ExifTag("PlanarConfiguration", 284, 3), new ExifTag("ResolutionUnit", 296, 3), new ExifTag("TransferFunction", 301, 3), new ExifTag("Software", 305, 2), new ExifTag("DateTime", 306, 2), new ExifTag("Artist", 315, 2), new ExifTag("WhitePoint", TypedValues.AttributesType.TYPE_PIVOT_TARGET, 5), new ExifTag("PrimaryChromaticities", 319, 5), new ExifTag(TAG_SUB_IFD_POINTER, 330, 4), new ExifTag("JPEGInterchangeFormat", 513, 4), new ExifTag("JPEGInterchangeFormatLength", 514, 4), new ExifTag("YCbCrCoefficients", 529, 5), new ExifTag("YCbCrSubSampling", 530, 3), new ExifTag("YCbCrPositioning", 531, 3), new ExifTag("ReferenceBlackWhite", BluetoothClass.Device.PHONE_ISDN, 5), new ExifTag("Copyright", 33432, 2), new ExifTag(TAG_EXIF_IFD_POINTER, 34665, 4), new ExifTag(TAG_GPS_INFO_IFD_POINTER, GLES30.GL_DRAW_BUFFER0, 4), new ExifTag("SensorTopBorder", 4, 4), new ExifTag("SensorLeftBorder", 5, 4), new ExifTag("SensorBottomBorder", 6, 4), new ExifTag("SensorRightBorder", 7, 4), new ExifTag("ISO", 23, 3), new ExifTag("JpgFromRaw", 46, 7)};
        IFD_TIFF_TAGS = exifTagArr;
        ExifTag[] exifTagArr2 = {new ExifTag("ExposureTime", 33434, 5), new ExifTag("FNumber", 33437, 5), new ExifTag("ExposureProgram", 34850, 3), new ExifTag("SpectralSensitivity", 34852, 2), new ExifTag(TAG_PHOTOGRAPHIC_SENSITIVITY, GLES30.GL_DRAW_BUFFER2, 3), new ExifTag("OECF", GLES30.GL_DRAW_BUFFER3, 7), new ExifTag("ExifVersion", 36864, 2), new ExifTag("DateTimeOriginal", 36867, 2), new ExifTag("DateTimeDigitized", 36868, 2), new ExifTag("ComponentsConfiguration", 37121, 7), new ExifTag("CompressedBitsPerPixel", 37122, 5), new ExifTag("ShutterSpeedValue", 37377, 10), new ExifTag("ApertureValue", 37378, 5), new ExifTag("BrightnessValue", 37379, 10), new ExifTag("ExposureBiasValue", 37380, 10), new ExifTag("MaxApertureValue", 37381, 5), new ExifTag("SubjectDistance", 37382, 5), new ExifTag("MeteringMode", 37383, 3), new ExifTag("LightSource", 37384, 3), new ExifTag("Flash", 37385, 3), new ExifTag("FocalLength", 37386, 5), new ExifTag("SubjectArea", 37396, 3), new ExifTag("MakerNote", 37500, 7), new ExifTag("UserComment", 37510, 7), new ExifTag("SubSecTime", 37520, 2), new ExifTag("SubSecTimeOriginal", 37521, 2), new ExifTag("SubSecTimeDigitized", 37522, 2), new ExifTag("FlashpixVersion", 40960, 7), new ExifTag("ColorSpace", 40961, 3), new ExifTag("PixelXDimension", 40962, 3, 4), new ExifTag("PixelYDimension", 40963, 3, 4), new ExifTag("RelatedSoundFile", 40964, 2), new ExifTag(TAG_INTEROPERABILITY_IFD_POINTER, 40965, 4), new ExifTag("FlashEnergy", 41483, 5), new ExifTag("SpatialFrequencyResponse", 41484, 7), new ExifTag("FocalPlaneXResolution", 41486, 5), new ExifTag("FocalPlaneYResolution", 41487, 5), new ExifTag("FocalPlaneResolutionUnit", 41488, 3), new ExifTag("SubjectLocation", 41492, 3), new ExifTag("ExposureIndex", 41493, 5), new ExifTag("SensingMethod", 41495, 3), new ExifTag("FileSource", 41728, 7), new ExifTag("SceneType", 41729, 7), new ExifTag("CFAPattern", 41730, 7), new ExifTag("CustomRendered", 41985, 3), new ExifTag("ExposureMode", 41986, 3), new ExifTag("WhiteBalance", 41987, 3), new ExifTag("DigitalZoomRatio", 41988, 5), new ExifTag("FocalLengthIn35mmFilm", 41989, 3), new ExifTag("SceneCaptureType", 41990, 3), new ExifTag("GainControl", 41991, 3), new ExifTag("Contrast", 41992, 3), new ExifTag("Saturation", 41993, 3), new ExifTag("Sharpness", 41994, 3), new ExifTag("DeviceSettingDescription", 41995, 7), new ExifTag("SubjectDistanceRange", 41996, 3), new ExifTag("ImageUniqueID", 42016, 2), new ExifTag("DNGVersion", 50706, 1), new ExifTag("DefaultCropSize", 50720, 3, 4)};
        IFD_EXIF_TAGS = exifTagArr2;
        ExifTag[] exifTagArr3 = {new ExifTag("GPSVersionID", 0, 1), new ExifTag("GPSLatitudeRef", 1, 2), new ExifTag("GPSLatitude", 2, 5), new ExifTag("GPSLongitudeRef", 3, 2), new ExifTag("GPSLongitude", 4, 5), new ExifTag("GPSAltitudeRef", 5, 1), new ExifTag("GPSAltitude", 6, 5), new ExifTag("GPSTimeStamp", 7, 5), new ExifTag("GPSSatellites", 8, 2), new ExifTag("GPSStatus", 9, 2), new ExifTag("GPSMeasureMode", 10, 2), new ExifTag("GPSDOP", 11, 5), new ExifTag("GPSSpeedRef", 12, 2), new ExifTag("GPSSpeed", 13, 5), new ExifTag("GPSTrackRef", 14, 2), new ExifTag("GPSTrack", 15, 5), new ExifTag("GPSImgDirectionRef", 16, 2), new ExifTag("GPSImgDirection", 17, 5), new ExifTag("GPSMapDatum", 18, 2), new ExifTag("GPSDestLatitudeRef", 19, 2), new ExifTag("GPSDestLatitude", 20, 5), new ExifTag("GPSDestLongitudeRef", 21, 2), new ExifTag("GPSDestLongitude", 22, 5), new ExifTag("GPSDestBearingRef", 23, 2), new ExifTag("GPSDestBearing", 24, 5), new ExifTag("GPSDestDistanceRef", 25, 2), new ExifTag("GPSDestDistance", 26, 5), new ExifTag("GPSProcessingMethod", 27, 7), new ExifTag("GPSAreaInformation", 28, 7), new ExifTag("GPSDateStamp", 29, 2), new ExifTag("GPSDifferential", 30, 3)};
        IFD_GPS_TAGS = exifTagArr3;
        ExifTag[] exifTagArr4 = {new ExifTag("InteroperabilityIndex", 1, 2)};
        IFD_INTEROPERABILITY_TAGS = exifTagArr4;
        ExifTag[] exifTagArr5 = {new ExifTag("NewSubfileType", 254, 4), new ExifTag("SubfileType", 255, 4), new ExifTag("ThumbnailImageWidth", 256, 3, 4), new ExifTag("ThumbnailImageLength", 257, 3, 4), new ExifTag("BitsPerSample", 258, 3), new ExifTag("Compression", 259, 3), new ExifTag("PhotometricInterpretation", 262, 3), new ExifTag("ImageDescription", 270, 2), new ExifTag("Make", 271, 2), new ExifTag("Model", 272, 2), new ExifTag("StripOffsets", 273, 3, 4), new ExifTag("Orientation", 274, 3), new ExifTag("SamplesPerPixel", 277, 3), new ExifTag("RowsPerStrip", KeyEvent.KEYCODE_COPY, 3, 4), new ExifTag("StripByteCounts", KeyEvent.KEYCODE_PASTE, 3, 4), new ExifTag("XResolution", KeyEvent.KEYCODE_SYSTEM_NAVIGATION_LEFT, 5), new ExifTag("YResolution", KeyEvent.KEYCODE_SYSTEM_NAVIGATION_RIGHT, 5), new ExifTag("PlanarConfiguration", 284, 3), new ExifTag("ResolutionUnit", 296, 3), new ExifTag("TransferFunction", 301, 3), new ExifTag("Software", 305, 2), new ExifTag("DateTime", 306, 2), new ExifTag("Artist", 315, 2), new ExifTag("WhitePoint", TypedValues.AttributesType.TYPE_PIVOT_TARGET, 5), new ExifTag("PrimaryChromaticities", 319, 5), new ExifTag(TAG_SUB_IFD_POINTER, 330, 4), new ExifTag("JPEGInterchangeFormat", 513, 4), new ExifTag("JPEGInterchangeFormatLength", 514, 4), new ExifTag("YCbCrCoefficients", 529, 5), new ExifTag("YCbCrSubSampling", 530, 3), new ExifTag("YCbCrPositioning", 531, 3), new ExifTag("ReferenceBlackWhite", BluetoothClass.Device.PHONE_ISDN, 5), new ExifTag("Copyright", 33432, 2), new ExifTag(TAG_EXIF_IFD_POINTER, 34665, 4), new ExifTag(TAG_GPS_INFO_IFD_POINTER, GLES30.GL_DRAW_BUFFER0, 4), new ExifTag("DNGVersion", 50706, 1), new ExifTag("DefaultCropSize", 50720, 3, 4)};
        IFD_THUMBNAIL_TAGS = exifTagArr5;
        TAG_RAF_IMAGE_SIZE = new ExifTag("StripOffsets", 273, 3);
        ExifTag[] exifTagArr6 = {new ExifTag("ThumbnailImage", 256, 7), new ExifTag(TAG_ORF_CAMERA_SETTINGS_IFD_POINTER, 8224, 4), new ExifTag(TAG_ORF_IMAGE_PROCESSING_IFD_POINTER, 8256, 4)};
        ORF_MAKER_NOTE_TAGS = exifTagArr6;
        ExifTag[] exifTagArr7 = {new ExifTag("PreviewImageStart", 257, 4), new ExifTag("PreviewImageLength", 258, 4)};
        ORF_CAMERA_SETTINGS_TAGS = exifTagArr7;
        ExifTag[] exifTagArr8 = {new ExifTag("AspectFrame", 4371, 3)};
        ORF_IMAGE_PROCESSING_TAGS = exifTagArr8;
        ExifTag[] exifTagArr9 = {new ExifTag("ColorSpace", 55, 3)};
        PEF_TAGS = exifTagArr9;
        ExifTag[][] exifTagArr10 = {exifTagArr, exifTagArr2, exifTagArr3, exifTagArr4, exifTagArr5, exifTagArr, exifTagArr6, exifTagArr7, exifTagArr8, exifTagArr9};
        EXIF_TAGS = exifTagArr10;
        EXIF_POINTER_TAGS = new ExifTag[]{new ExifTag(TAG_SUB_IFD_POINTER, 330, 4), new ExifTag(TAG_EXIF_IFD_POINTER, 34665, 4), new ExifTag(TAG_GPS_INFO_IFD_POINTER, GLES30.GL_DRAW_BUFFER0, 4), new ExifTag(TAG_INTEROPERABILITY_IFD_POINTER, 40965, 4), new ExifTag(TAG_ORF_CAMERA_SETTINGS_IFD_POINTER, 8224, 1), new ExifTag(TAG_ORF_IMAGE_PROCESSING_IFD_POINTER, 8256, 1)};
        JPEG_INTERCHANGE_FORMAT_TAG = new ExifTag("JPEGInterchangeFormat", 513, 4);
        JPEG_INTERCHANGE_FORMAT_LENGTH_TAG = new ExifTag("JPEGInterchangeFormatLength", 514, 4);
        sExifTagMapsForReading = new HashMap[exifTagArr10.length];
        sExifTagMapsForWriting = new HashMap[exifTagArr10.length];
        sTagSetForCompatibility = new HashSet<>(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
        sExifPointerTagMap = new HashMap<>();
        Charset forName = Charset.forName(CharEncoding.US_ASCII);
        ASCII = forName;
        IDENTIFIER_EXIF_APP1 = DefaultImageHeaderParser.f59324h.getBytes(forName);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
        sFormatter = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        int i10 = 0;
        while (true) {
            ExifTag[][] exifTagArr11 = EXIF_TAGS;
            if (i10 >= exifTagArr11.length) {
                HashMap<Integer, Integer> hashMap = sExifPointerTagMap;
                ExifTag[] exifTagArr12 = EXIF_POINTER_TAGS;
                hashMap.put(Integer.valueOf(exifTagArr12[0].number), 5);
                hashMap.put(Integer.valueOf(exifTagArr12[1].number), 1);
                hashMap.put(Integer.valueOf(exifTagArr12[2].number), 2);
                hashMap.put(Integer.valueOf(exifTagArr12[3].number), 3);
                hashMap.put(Integer.valueOf(exifTagArr12[4].number), 7);
                hashMap.put(Integer.valueOf(exifTagArr12[5].number), 8);
                sNonZeroTimePattern = Pattern.compile(".*[1-9].*");
                sGpsTimestampPattern = Pattern.compile("^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$");
                return;
            }
            sExifTagMapsForReading[i10] = new HashMap<>();
            sExifTagMapsForWriting[i10] = new HashMap<>();
            for (ExifTag exifTag : exifTagArr11[i10]) {
                sExifTagMapsForReading[i10].put(Integer.valueOf(exifTag.number), exifTag);
                sExifTagMapsForWriting[i10].put(exifTag.name, exifTag);
            }
            i10++;
        }
    }

    public ExifInterface(String str) throws IOException {
        ExifTag[][] exifTagArr = EXIF_TAGS;
        this.mAttributes = new HashMap[exifTagArr.length];
        this.mAttributesOffsets = new HashSet(exifTagArr.length);
        this.mExifByteOrder = ByteOrder.BIG_ENDIAN;
        if (str != null) {
            FileInputStream fileInputStream = null;
            this.mAssetInputStream = null;
            this.mFilename = str;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(str);
                try {
                    loadAttributes(fileInputStream2);
                    closeQuietly(fileInputStream2);
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                    closeQuietly(fileInputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            throw new IllegalArgumentException("filename cannot be null");
        }
    }

    private void addDefaultValuesForCompatibility() {
        String attribute = getAttribute("DateTimeOriginal");
        if (attribute != null && getAttribute("DateTime") == null) {
            this.mAttributes[0].put("DateTime", ExifAttribute.createString(attribute));
        }
        if (getAttribute("ImageWidth") == null) {
            this.mAttributes[0].put("ImageWidth", ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (getAttribute("ImageLength") == null) {
            this.mAttributes[0].put("ImageLength", ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (getAttribute("Orientation") == null) {
            this.mAttributes[0].put("Orientation", ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (getAttribute("LightSource") == null) {
            this.mAttributes[1].put("LightSource", ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
    }

    private static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    private String convertDecimalDegree(double d10) {
        long j10 = (long) d10;
        double d11 = d10 - j10;
        long j11 = (long) (d11 * 60.0d);
        return j10 + "/1," + j11 + "/1," + Math.round((d11 - (j11 / 60.0d)) * 3600.0d * 1.0E7d) + "/10000000";
    }

    private static double convertRationalLatLonToDouble(String str, String str2) {
        try {
            String[] split = str.split(DocLint.SEPARATOR, -1);
            String[] split2 = split[0].split("/", -1);
            double parseDouble = Double.parseDouble(split2[0].trim()) / Double.parseDouble(split2[1].trim());
            String[] split3 = split[1].split("/", -1);
            double parseDouble2 = Double.parseDouble(split3[0].trim()) / Double.parseDouble(split3[1].trim());
            String[] split4 = split[2].split("/", -1);
            double parseDouble3 = parseDouble + (parseDouble2 / 60.0d) + ((Double.parseDouble(split4[0].trim()) / Double.parseDouble(split4[1].trim())) / 3600.0d);
            if (!str2.equals("S") && !str2.equals(LONGITUDE_WEST)) {
                if (!str2.equals("N") && !str2.equals("E")) {
                    throw new IllegalArgumentException();
                }
                return parseDouble3;
            }
            return -parseDouble3;
        } catch (ArrayIndexOutOfBoundsException | NumberFormatException unused) {
            throw new IllegalArgumentException();
        }
    }

    private static long[] convertToLongArray(Object obj) {
        if (!(obj instanceof int[])) {
            if (obj instanceof long[]) {
                return (long[]) obj;
            }
            return null;
        }
        int[] iArr = (int[]) obj;
        long[] jArr = new long[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            jArr[i10] = iArr[i10];
        }
        return jArr;
    }

    private static int copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        int i10 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return i10;
            }
            i10 += read;
            outputStream.write(bArr, 0, read);
        }
    }

    private ExifAttribute getExifAttribute(String str) {
        if ("ISOSpeedRatings".equals(str)) {
            str = TAG_PHOTOGRAPHIC_SENSITIVITY;
        }
        for (int i10 = 0; i10 < EXIF_TAGS.length; i10++) {
            ExifAttribute exifAttribute = this.mAttributes[i10].get(str);
            if (exifAttribute != null) {
                return exifAttribute;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x0115, code lost:
    
        r10.setByteOrder(r9.mExifByteOrder);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x011a, code lost:
    
        return;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x0047. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x004a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x004d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0050. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0055 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void getJpegAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream, int i10, int i11) throws IOException {
        byteOrderedDataInputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        byteOrderedDataInputStream.seek(i10);
        byte readByte = byteOrderedDataInputStream.readByte();
        if (readByte != -1) {
            throw new IOException("Invalid marker: " + Integer.toHexString(readByte & 255));
        }
        if (byteOrderedDataInputStream.readByte() != -40) {
            throw new IOException("Invalid marker: " + Integer.toHexString(readByte & 255));
        }
        int i12 = i10 + 2;
        while (true) {
            byte readByte2 = byteOrderedDataInputStream.readByte();
            if (readByte2 != -1) {
                throw new IOException("Invalid marker:" + Integer.toHexString(readByte2 & 255));
            }
            byte readByte3 = byteOrderedDataInputStream.readByte();
            if (readByte3 != -39 && readByte3 != -38) {
                int readUnsignedShort = byteOrderedDataInputStream.readUnsignedShort();
                int i13 = readUnsignedShort - 2;
                int i14 = i12 + 4;
                if (i13 < 0) {
                    throw new IOException("Invalid length");
                }
                if (readByte3 != -31) {
                    if (readByte3 != -2) {
                        switch (readByte3) {
                            default:
                                switch (readByte3) {
                                    default:
                                        switch (readByte3) {
                                            default:
                                                switch (readByte3) {
                                                }
                                            case -55:
                                            case -54:
                                            case -53:
                                                if (byteOrderedDataInputStream.skipBytes(1) != 1) {
                                                    throw new IOException("Invalid SOFx");
                                                }
                                                this.mAttributes[i11].put("ImageLength", ExifAttribute.createULong(byteOrderedDataInputStream.readUnsignedShort(), this.mExifByteOrder));
                                                this.mAttributes[i11].put("ImageWidth", ExifAttribute.createULong(byteOrderedDataInputStream.readUnsignedShort(), this.mExifByteOrder));
                                                i13 = readUnsignedShort - 7;
                                                break;
                                        }
                                    case -59:
                                    case -58:
                                    case -57:
                                        break;
                                }
                            case -64:
                            case -63:
                            case -62:
                            case -61:
                                break;
                        }
                    } else {
                        byte[] bArr = new byte[i13];
                        if (byteOrderedDataInputStream.read(bArr) != i13) {
                            throw new IOException("Invalid exif");
                        }
                        if (getAttribute("UserComment") == null) {
                            this.mAttributes[1].put("UserComment", ExifAttribute.createString(new String(bArr, ASCII)));
                        }
                        i13 = 0;
                    }
                } else if (i13 >= 6) {
                    byte[] bArr2 = new byte[6];
                    if (byteOrderedDataInputStream.read(bArr2) != 6) {
                        throw new IOException("Invalid exif");
                    }
                    i14 = i12 + 10;
                    int i15 = readUnsignedShort - 8;
                    if (!Arrays.equals(bArr2, IDENTIFIER_EXIF_APP1)) {
                        i13 = i15;
                    } else {
                        if (i15 <= 0) {
                            throw new IOException("Invalid exif");
                        }
                        this.mExifOffset = i14;
                        byte[] bArr3 = new byte[i15];
                        if (byteOrderedDataInputStream.read(bArr3) != i15) {
                            throw new IOException("Invalid exif");
                        }
                        i14 += i15;
                        readExifSegment(bArr3, i11);
                        i13 = 0;
                    }
                }
                if (i13 < 0) {
                    throw new IOException("Invalid length");
                }
                if (byteOrderedDataInputStream.skipBytes(i13) != i13) {
                    throw new IOException("Invalid JPEG segment");
                }
                i12 = i14 + i13;
            }
        }
    }

    private int getMimeType(BufferedInputStream bufferedInputStream) throws IOException {
        bufferedInputStream.mark(5000);
        byte[] bArr = new byte[5000];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        if (isJpegFormat(bArr)) {
            return 4;
        }
        if (isRafFormat(bArr)) {
            return 9;
        }
        if (isOrfFormat(bArr)) {
            return 7;
        }
        return isRw2Format(bArr) ? 10 : 0;
    }

    private void getOrfAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        int i10;
        int i11;
        getRawAttributes(byteOrderedDataInputStream);
        ExifAttribute exifAttribute = this.mAttributes[1].get("MakerNote");
        if (exifAttribute != null) {
            ByteOrderedDataInputStream byteOrderedDataInputStream2 = new ByteOrderedDataInputStream(exifAttribute.bytes);
            byteOrderedDataInputStream2.setByteOrder(this.mExifByteOrder);
            byte[] bArr = ORF_MAKER_NOTE_HEADER_1;
            byte[] bArr2 = new byte[bArr.length];
            byteOrderedDataInputStream2.readFully(bArr2);
            byteOrderedDataInputStream2.seek(0L);
            byte[] bArr3 = ORF_MAKER_NOTE_HEADER_2;
            byte[] bArr4 = new byte[bArr3.length];
            byteOrderedDataInputStream2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                byteOrderedDataInputStream2.seek(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                byteOrderedDataInputStream2.seek(12L);
            }
            readImageFileDirectory(byteOrderedDataInputStream2, 6);
            ExifAttribute exifAttribute2 = this.mAttributes[7].get("PreviewImageStart");
            ExifAttribute exifAttribute3 = this.mAttributes[7].get("PreviewImageLength");
            if (exifAttribute2 != null && exifAttribute3 != null) {
                this.mAttributes[5].put("JPEGInterchangeFormat", exifAttribute2);
                this.mAttributes[5].put("JPEGInterchangeFormatLength", exifAttribute3);
            }
            ExifAttribute exifAttribute4 = this.mAttributes[8].get("AspectFrame");
            if (exifAttribute4 != null) {
                int[] iArr = (int[]) exifAttribute4.getValue(this.mExifByteOrder);
                if (iArr == null || iArr.length != 4) {
                    Log.w(TAG, "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
                    return;
                }
                int i12 = iArr[2];
                int i13 = iArr[0];
                if (i12 <= i13 || (i10 = iArr[3]) <= (i11 = iArr[1])) {
                    return;
                }
                int i14 = (i12 - i13) + 1;
                int i15 = (i10 - i11) + 1;
                if (i14 < i15) {
                    int i16 = i14 + i15;
                    i15 = i16 - i15;
                    i14 = i16 - i15;
                }
                ExifAttribute createUShort = ExifAttribute.createUShort(i14, this.mExifByteOrder);
                ExifAttribute createUShort2 = ExifAttribute.createUShort(i15, this.mExifByteOrder);
                this.mAttributes[0].put("ImageWidth", createUShort);
                this.mAttributes[0].put("ImageLength", createUShort2);
            }
        }
    }

    private void getRafAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        byteOrderedDataInputStream.skipBytes(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byteOrderedDataInputStream.read(bArr);
        byteOrderedDataInputStream.skipBytes(4);
        byteOrderedDataInputStream.read(bArr2);
        int i10 = ByteBuffer.wrap(bArr).getInt();
        int i11 = ByteBuffer.wrap(bArr2).getInt();
        getJpegAttributes(byteOrderedDataInputStream, i10, 5);
        byteOrderedDataInputStream.seek(i11);
        byteOrderedDataInputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        int readInt = byteOrderedDataInputStream.readInt();
        for (int i12 = 0; i12 < readInt; i12++) {
            int readUnsignedShort = byteOrderedDataInputStream.readUnsignedShort();
            int readUnsignedShort2 = byteOrderedDataInputStream.readUnsignedShort();
            if (readUnsignedShort == TAG_RAF_IMAGE_SIZE.number) {
                short readShort = byteOrderedDataInputStream.readShort();
                short readShort2 = byteOrderedDataInputStream.readShort();
                ExifAttribute createUShort = ExifAttribute.createUShort(readShort, this.mExifByteOrder);
                ExifAttribute createUShort2 = ExifAttribute.createUShort(readShort2, this.mExifByteOrder);
                this.mAttributes[0].put("ImageLength", createUShort);
                this.mAttributes[0].put("ImageWidth", createUShort2);
                return;
            }
            byteOrderedDataInputStream.skipBytes(readUnsignedShort2);
        }
    }

    private void getRawAttributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        ExifAttribute exifAttribute;
        parseTiffHeaders(byteOrderedDataInputStream, byteOrderedDataInputStream.available());
        readImageFileDirectory(byteOrderedDataInputStream, 0);
        updateImageSizeValues(byteOrderedDataInputStream, 0);
        updateImageSizeValues(byteOrderedDataInputStream, 5);
        updateImageSizeValues(byteOrderedDataInputStream, 4);
        validateImages(byteOrderedDataInputStream);
        if (this.mMimeType != 8 || (exifAttribute = this.mAttributes[1].get("MakerNote")) == null) {
            return;
        }
        ByteOrderedDataInputStream byteOrderedDataInputStream2 = new ByteOrderedDataInputStream(exifAttribute.bytes);
        byteOrderedDataInputStream2.setByteOrder(this.mExifByteOrder);
        byteOrderedDataInputStream2.seek(6L);
        readImageFileDirectory(byteOrderedDataInputStream2, 9);
        ExifAttribute exifAttribute2 = this.mAttributes[9].get("ColorSpace");
        if (exifAttribute2 != null) {
            this.mAttributes[1].put("ColorSpace", exifAttribute2);
        }
    }

    private void getRw2Attributes(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        getRawAttributes(byteOrderedDataInputStream);
        if (this.mAttributes[0].get("JpgFromRaw") != null) {
            getJpegAttributes(byteOrderedDataInputStream, this.mRw2JpgFromRawOffset, 5);
        }
        ExifAttribute exifAttribute = this.mAttributes[0].get("ISO");
        ExifAttribute exifAttribute2 = this.mAttributes[1].get(TAG_PHOTOGRAPHIC_SENSITIVITY);
        if (exifAttribute == null || exifAttribute2 != null) {
            return;
        }
        this.mAttributes[1].put(TAG_PHOTOGRAPHIC_SENSITIVITY, exifAttribute);
    }

    private static Pair<Integer, Integer> guessDataFormat(String str) {
        if (str.contains(DocLint.SEPARATOR)) {
            String[] split = str.split(DocLint.SEPARATOR, -1);
            Pair<Integer, Integer> guessDataFormat = guessDataFormat(split[0]);
            if (guessDataFormat.first.intValue() == 2) {
                return guessDataFormat;
            }
            for (int i10 = 1; i10 < split.length; i10++) {
                Pair<Integer, Integer> guessDataFormat2 = guessDataFormat(split[i10]);
                int intValue = (guessDataFormat2.first.equals(guessDataFormat.first) || guessDataFormat2.second.equals(guessDataFormat.first)) ? guessDataFormat.first.intValue() : -1;
                int intValue2 = (guessDataFormat.second.intValue() == -1 || !(guessDataFormat2.first.equals(guessDataFormat.second) || guessDataFormat2.second.equals(guessDataFormat.second))) ? -1 : guessDataFormat.second.intValue();
                if (intValue == -1 && intValue2 == -1) {
                    return new Pair<>(2, -1);
                }
                if (intValue == -1) {
                    guessDataFormat = new Pair<>(Integer.valueOf(intValue2), -1);
                } else if (intValue2 == -1) {
                    guessDataFormat = new Pair<>(Integer.valueOf(intValue), -1);
                }
            }
            return guessDataFormat;
        }
        if (!str.contains("/")) {
            try {
                try {
                    long parseLong = Long.parseLong(str);
                    return (parseLong < 0 || parseLong > b.f23266s) ? parseLong < 0 ? new Pair<>(9, -1) : new Pair<>(4, -1) : new Pair<>(3, 4);
                } catch (NumberFormatException unused) {
                    return new Pair<>(2, -1);
                }
            } catch (NumberFormatException unused2) {
                Double.parseDouble(str);
                return new Pair<>(12, -1);
            }
        }
        String[] split2 = str.split("/", -1);
        if (split2.length == 2) {
            try {
                long parseDouble = (long) Double.parseDouble(split2[0]);
                long parseDouble2 = (long) Double.parseDouble(split2[1]);
                if (parseDouble >= 0 && parseDouble2 >= 0) {
                    if (parseDouble <= 2147483647L && parseDouble2 <= 2147483647L) {
                        return new Pair<>(10, 5);
                    }
                    return new Pair<>(5, -1);
                }
                return new Pair<>(10, -1);
            } catch (NumberFormatException unused3) {
            }
        }
        return new Pair<>(2, -1);
    }

    private void handleThumbnailFromJfif(ByteOrderedDataInputStream byteOrderedDataInputStream, HashMap hashMap) throws IOException {
        int i10;
        ExifAttribute exifAttribute = (ExifAttribute) hashMap.get("JPEGInterchangeFormat");
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get("JPEGInterchangeFormatLength");
        if (exifAttribute == null || exifAttribute2 == null) {
            return;
        }
        int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
        int min = Math.min(exifAttribute2.getIntValue(this.mExifByteOrder), byteOrderedDataInputStream.available() - intValue);
        int i11 = this.mMimeType;
        if (i11 != 4 && i11 != 9 && i11 != 10) {
            if (i11 == 7) {
                i10 = this.mOrfMakerNoteOffset;
            }
            if (intValue > 0 || min <= 0) {
            }
            this.mHasThumbnail = true;
            this.mThumbnailOffset = intValue;
            this.mThumbnailLength = min;
            if (this.mFilename == null && this.mAssetInputStream == null) {
                byte[] bArr = new byte[min];
                byteOrderedDataInputStream.seek(intValue);
                byteOrderedDataInputStream.readFully(bArr);
                this.mThumbnailBytes = bArr;
                return;
            }
            return;
        }
        i10 = this.mExifOffset;
        intValue += i10;
        if (intValue > 0) {
        }
    }

    private void handleThumbnailFromStrips(ByteOrderedDataInputStream byteOrderedDataInputStream, HashMap hashMap) throws IOException {
        ExifAttribute exifAttribute = (ExifAttribute) hashMap.get("StripOffsets");
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get("StripByteCounts");
        if (exifAttribute == null || exifAttribute2 == null) {
            return;
        }
        long[] convertToLongArray = convertToLongArray(exifAttribute.getValue(this.mExifByteOrder));
        long[] convertToLongArray2 = convertToLongArray(exifAttribute2.getValue(this.mExifByteOrder));
        if (convertToLongArray == null) {
            Log.w(TAG, "stripOffsets should not be null.");
            return;
        }
        if (convertToLongArray2 == null) {
            Log.w(TAG, "stripByteCounts should not be null.");
            return;
        }
        long j10 = 0;
        for (long j11 : convertToLongArray2) {
            j10 += j11;
        }
        int i10 = (int) j10;
        byte[] bArr = new byte[i10];
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < convertToLongArray.length; i13++) {
            int i14 = (int) convertToLongArray[i13];
            int i15 = (int) convertToLongArray2[i13];
            int i16 = i14 - i11;
            if (i16 < 0) {
                Log.d(TAG, "Invalid strip offset value");
            }
            byteOrderedDataInputStream.seek(i16);
            int i17 = i11 + i16;
            byte[] bArr2 = new byte[i15];
            byteOrderedDataInputStream.read(bArr2);
            i11 = i17 + i15;
            System.arraycopy(bArr2, 0, bArr, i12, i15);
            i12 += i15;
        }
        this.mHasThumbnail = true;
        this.mThumbnailBytes = bArr;
        this.mThumbnailLength = i10;
    }

    private static boolean isJpegFormat(byte[] bArr) throws IOException {
        int i10 = 0;
        while (true) {
            byte[] bArr2 = JPEG_SIGNATURE;
            if (i10 >= bArr2.length) {
                return true;
            }
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
            i10++;
        }
    }

    private boolean isOrfFormat(byte[] bArr) throws IOException {
        ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(bArr);
        ByteOrder readByteOrder = readByteOrder(byteOrderedDataInputStream);
        this.mExifByteOrder = readByteOrder;
        byteOrderedDataInputStream.setByteOrder(readByteOrder);
        short readShort = byteOrderedDataInputStream.readShort();
        byteOrderedDataInputStream.close();
        return readShort == 20306 || readShort == 21330;
    }

    private boolean isRafFormat(byte[] bArr) throws IOException {
        byte[] bytes = RAF_SIGNATURE.getBytes(Charset.defaultCharset());
        for (int i10 = 0; i10 < bytes.length; i10++) {
            if (bArr[i10] != bytes[i10]) {
                return false;
            }
        }
        return true;
    }

    private boolean isRw2Format(byte[] bArr) throws IOException {
        ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(bArr);
        ByteOrder readByteOrder = readByteOrder(byteOrderedDataInputStream);
        this.mExifByteOrder = readByteOrder;
        byteOrderedDataInputStream.setByteOrder(readByteOrder);
        short readShort = byteOrderedDataInputStream.readShort();
        byteOrderedDataInputStream.close();
        return readShort == 85;
    }

    private boolean isSupportedDataType(HashMap hashMap) throws IOException {
        ExifAttribute exifAttribute;
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get("BitsPerSample");
        if (exifAttribute2 == null) {
            return false;
        }
        int[] iArr = (int[]) exifAttribute2.getValue(this.mExifByteOrder);
        int[] iArr2 = BITS_PER_SAMPLE_RGB;
        if (Arrays.equals(iArr2, iArr)) {
            return true;
        }
        if (this.mMimeType != 3 || (exifAttribute = (ExifAttribute) hashMap.get("PhotometricInterpretation")) == null) {
            return false;
        }
        int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
        return (intValue == 1 && Arrays.equals(iArr, BITS_PER_SAMPLE_GREYSCALE_2)) || (intValue == 6 && Arrays.equals(iArr, iArr2));
    }

    private boolean isThumbnail(HashMap hashMap) throws IOException {
        ExifAttribute exifAttribute = (ExifAttribute) hashMap.get("ImageLength");
        ExifAttribute exifAttribute2 = (ExifAttribute) hashMap.get("ImageWidth");
        if (exifAttribute == null || exifAttribute2 == null) {
            return false;
        }
        return exifAttribute.getIntValue(this.mExifByteOrder) <= 512 && exifAttribute2.getIntValue(this.mExifByteOrder) <= 512;
    }

    private void loadAttributes(InputStream inputStream) throws IOException {
        for (int i10 = 0; i10 < EXIF_TAGS.length; i10++) {
            try {
                try {
                    this.mAttributes[i10] = new HashMap<>();
                } catch (IOException unused) {
                    this.mIsSupportedFile = false;
                }
            } catch (Throwable th2) {
                addDefaultValuesForCompatibility();
                throw th2;
            }
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
        this.mMimeType = getMimeType(bufferedInputStream);
        ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(bufferedInputStream);
        switch (this.mMimeType) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 11:
                getRawAttributes(byteOrderedDataInputStream);
                break;
            case 4:
                getJpegAttributes(byteOrderedDataInputStream, 0, 0);
                break;
            case 7:
                getOrfAttributes(byteOrderedDataInputStream);
                break;
            case 9:
                getRafAttributes(byteOrderedDataInputStream);
                break;
            case 10:
                getRw2Attributes(byteOrderedDataInputStream);
                break;
        }
        setThumbnailData(byteOrderedDataInputStream);
        this.mIsSupportedFile = true;
        addDefaultValuesForCompatibility();
    }

    private void parseTiffHeaders(ByteOrderedDataInputStream byteOrderedDataInputStream, int i10) throws IOException {
        ByteOrder readByteOrder = readByteOrder(byteOrderedDataInputStream);
        this.mExifByteOrder = readByteOrder;
        byteOrderedDataInputStream.setByteOrder(readByteOrder);
        int readUnsignedShort = byteOrderedDataInputStream.readUnsignedShort();
        int i11 = this.mMimeType;
        if (i11 != 7 && i11 != 10 && readUnsignedShort != 42) {
            throw new IOException("Invalid start code: " + Integer.toHexString(readUnsignedShort));
        }
        int readInt = byteOrderedDataInputStream.readInt();
        if (readInt < 8 || readInt >= i10) {
            throw new IOException("Invalid first Ifd offset: " + readInt);
        }
        int i12 = readInt - 8;
        if (i12 <= 0 || byteOrderedDataInputStream.skipBytes(i12) == i12) {
            return;
        }
        throw new IOException("Couldn't jump to first Ifd: " + i12);
    }

    private void printAttributes() {
        for (int i10 = 0; i10 < this.mAttributes.length; i10++) {
            Log.d(TAG, "The size of tag group[" + i10 + "]: " + this.mAttributes[i10].size());
            for (Map.Entry<String, ExifAttribute> entry : this.mAttributes[i10].entrySet()) {
                ExifAttribute value = entry.getValue();
                Log.d(TAG, "tagName: " + entry.getKey() + ", tagType: " + value.toString() + ", tagValue: '" + value.getStringValue(this.mExifByteOrder) + "'");
            }
        }
    }

    private ByteOrder readByteOrder(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        short readShort = byteOrderedDataInputStream.readShort();
        if (readShort == 18761) {
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (readShort == 19789) {
            return ByteOrder.BIG_ENDIAN;
        }
        throw new IOException("Invalid byte order: " + Integer.toHexString(readShort));
    }

    private void readExifSegment(byte[] bArr, int i10) throws IOException {
        ByteOrderedDataInputStream byteOrderedDataInputStream = new ByteOrderedDataInputStream(bArr);
        parseTiffHeaders(byteOrderedDataInputStream, bArr.length);
        readImageFileDirectory(byteOrderedDataInputStream, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void readImageFileDirectory(ByteOrderedDataInputStream byteOrderedDataInputStream, int i10) throws IOException {
        short s10;
        String str;
        long j10;
        boolean z10;
        short s11;
        ExifTag exifTag;
        int i11;
        int i12;
        int readUnsignedShort;
        long j11;
        long j12;
        this.mAttributesOffsets.add(Integer.valueOf(byteOrderedDataInputStream.mPosition));
        if (byteOrderedDataInputStream.mPosition + 2 > byteOrderedDataInputStream.mLength) {
            return;
        }
        short readShort = byteOrderedDataInputStream.readShort();
        if (byteOrderedDataInputStream.mPosition + (readShort * 12) > byteOrderedDataInputStream.mLength || readShort <= 0) {
            return;
        }
        short s12 = 0;
        while (s12 < readShort) {
            int readUnsignedShort2 = byteOrderedDataInputStream.readUnsignedShort();
            int readUnsignedShort3 = byteOrderedDataInputStream.readUnsignedShort();
            int readInt = byteOrderedDataInputStream.readInt();
            long peek = byteOrderedDataInputStream.peek() + 4;
            ExifTag exifTag2 = sExifTagMapsForReading[i10].get(Integer.valueOf(readUnsignedShort2));
            if (exifTag2 == null) {
                Log.w(TAG, "Skip the tag entry since tag number is not defined: " + readUnsignedShort2);
            } else {
                if (readUnsignedShort3 > 0) {
                    if (readUnsignedShort3 < IFD_FORMAT_BYTES_PER_FORMAT.length) {
                        if (exifTag2.isFormatCompatible(readUnsignedShort3)) {
                            if (readUnsignedShort3 == 7) {
                                readUnsignedShort3 = exifTag2.primaryFormat;
                            }
                            str = TAG;
                            s10 = s12;
                            j10 = r6[readUnsignedShort3] * readInt;
                            if (j10 < 0 || j10 > 2147483647L) {
                                Log.w(str, "Skip the tag entry since the number of components is invalid: " + readInt);
                                z10 = false;
                                if (z10) {
                                    byteOrderedDataInputStream.seek(peek);
                                    s11 = readShort;
                                } else {
                                    if (j10 > 4) {
                                        int readInt2 = byteOrderedDataInputStream.readInt();
                                        int i13 = this.mMimeType;
                                        s11 = readShort;
                                        if (i13 == 7) {
                                            if ("MakerNote".equals(exifTag2.name)) {
                                                this.mOrfMakerNoteOffset = readInt2;
                                            } else if (i10 == 6 && "ThumbnailImage".equals(exifTag2.name)) {
                                                this.mOrfThumbnailOffset = readInt2;
                                                this.mOrfThumbnailLength = readInt;
                                                ExifAttribute createUShort = ExifAttribute.createUShort(6, this.mExifByteOrder);
                                                i11 = readUnsignedShort3;
                                                i12 = readInt;
                                                ExifAttribute createULong = ExifAttribute.createULong(this.mOrfThumbnailOffset, this.mExifByteOrder);
                                                j12 = peek;
                                                ExifAttribute createULong2 = ExifAttribute.createULong(this.mOrfThumbnailLength, this.mExifByteOrder);
                                                this.mAttributes[4].put("Compression", createUShort);
                                                this.mAttributes[4].put("JPEGInterchangeFormat", createULong);
                                                this.mAttributes[4].put("JPEGInterchangeFormatLength", createULong2);
                                            }
                                            i11 = readUnsignedShort3;
                                            i12 = readInt;
                                            j12 = peek;
                                        } else {
                                            i11 = readUnsignedShort3;
                                            i12 = readInt;
                                            j12 = peek;
                                            if (i13 == 10 && "JpgFromRaw".equals(exifTag2.name)) {
                                                this.mRw2JpgFromRawOffset = readInt2;
                                            }
                                        }
                                        long j13 = readInt2;
                                        exifTag = exifTag2;
                                        if (j13 + j10 <= byteOrderedDataInputStream.mLength) {
                                            byteOrderedDataInputStream.seek(j13);
                                            peek = j12;
                                        } else {
                                            Log.w(str, "Skip the tag entry since data offset is invalid: " + readInt2);
                                            byteOrderedDataInputStream.seek(j12);
                                        }
                                    } else {
                                        s11 = readShort;
                                        exifTag = exifTag2;
                                        i11 = readUnsignedShort3;
                                        i12 = readInt;
                                    }
                                    Integer num = sExifPointerTagMap.get(Integer.valueOf(readUnsignedShort2));
                                    if (num != null) {
                                        int i14 = i11;
                                        if (i14 != 3) {
                                            if (i14 == 4) {
                                                j11 = byteOrderedDataInputStream.readUnsignedInt();
                                            } else if (i14 == 8) {
                                                readUnsignedShort = byteOrderedDataInputStream.readShort();
                                            } else if (i14 == 9 || i14 == 13) {
                                                readUnsignedShort = byteOrderedDataInputStream.readInt();
                                            } else {
                                                j11 = -1;
                                            }
                                            if (j11 > 0 || j11 >= byteOrderedDataInputStream.mLength) {
                                                Log.w(str, "Skip jump into the IFD since its offset is invalid: " + j11);
                                            } else if (this.mAttributesOffsets.contains(Integer.valueOf((int) j11))) {
                                                Log.w(str, "Skip jump into the IFD since it has already been read: IfdType " + ((Object) num) + " (at " + j11 + ")");
                                            } else {
                                                byteOrderedDataInputStream.seek(j11);
                                                readImageFileDirectory(byteOrderedDataInputStream, num.intValue());
                                            }
                                            byteOrderedDataInputStream.seek(peek);
                                        } else {
                                            readUnsignedShort = byteOrderedDataInputStream.readUnsignedShort();
                                        }
                                        j11 = readUnsignedShort;
                                        if (j11 > 0) {
                                        }
                                        Log.w(str, "Skip jump into the IFD since its offset is invalid: " + j11);
                                        byteOrderedDataInputStream.seek(peek);
                                    } else {
                                        byte[] bArr = new byte[(int) j10];
                                        byteOrderedDataInputStream.readFully(bArr);
                                        ExifAttribute exifAttribute = new ExifAttribute(i11, i12, bArr);
                                        ExifTag exifTag3 = exifTag;
                                        this.mAttributes[i10].put(exifTag3.name, exifAttribute);
                                        if ("DNGVersion".equals(exifTag3.name)) {
                                            this.mMimeType = 3;
                                        }
                                        if ((("Make".equals(exifTag3.name) || "Model".equals(exifTag3.name)) && exifAttribute.getStringValue(this.mExifByteOrder).contains(PEF_SIGNATURE)) || ("Compression".equals(exifTag3.name) && exifAttribute.getIntValue(this.mExifByteOrder) == 65535)) {
                                            this.mMimeType = 8;
                                        }
                                        if (byteOrderedDataInputStream.peek() != peek) {
                                            byteOrderedDataInputStream.seek(peek);
                                        }
                                    }
                                }
                                s12 = (short) (s10 + 1);
                                readShort = s11;
                            } else {
                                z10 = true;
                                if (z10) {
                                }
                                s12 = (short) (s10 + 1);
                                readShort = s11;
                            }
                        } else {
                            Log.w(TAG, "Skip the tag entry since data format (" + IFD_FORMAT_NAMES[readUnsignedShort3] + ") is unexpected for tag: " + exifTag2.name);
                        }
                    }
                }
                s10 = s12;
                str = TAG;
                Log.w(str, "Skip the tag entry since data format is invalid: " + readUnsignedShort3);
                j10 = 0;
                z10 = false;
                if (z10) {
                }
                s12 = (short) (s10 + 1);
                readShort = s11;
            }
            s10 = s12;
            str = TAG;
            j10 = 0;
            z10 = false;
            if (z10) {
            }
            s12 = (short) (s10 + 1);
            readShort = s11;
        }
        if (byteOrderedDataInputStream.peek() + 4 <= byteOrderedDataInputStream.mLength) {
            int readInt3 = byteOrderedDataInputStream.readInt();
            long j14 = readInt3;
            if (j14 <= 0 || readInt3 >= byteOrderedDataInputStream.mLength) {
                Log.w(TAG, "Stop reading file since a wrong offset may cause an infinite loop: " + readInt3);
                return;
            }
            if (this.mAttributesOffsets.contains(Integer.valueOf(readInt3))) {
                Log.w(TAG, "Stop reading file since re-reading an IFD may cause an infinite loop: " + readInt3);
                return;
            }
            byteOrderedDataInputStream.seek(j14);
            if (this.mAttributes[4].isEmpty()) {
                readImageFileDirectory(byteOrderedDataInputStream, 4);
            } else if (this.mAttributes[5].isEmpty()) {
                readImageFileDirectory(byteOrderedDataInputStream, 5);
            }
        }
    }

    private void removeAttribute(String str) {
        for (int i10 = 0; i10 < EXIF_TAGS.length; i10++) {
            this.mAttributes[i10].remove(str);
        }
    }

    private void retrieveJpegImageSize(ByteOrderedDataInputStream byteOrderedDataInputStream, int i10) throws IOException {
        ExifAttribute exifAttribute;
        ExifAttribute exifAttribute2 = this.mAttributes[i10].get("ImageLength");
        ExifAttribute exifAttribute3 = this.mAttributes[i10].get("ImageWidth");
        if ((exifAttribute2 == null || exifAttribute3 == null) && (exifAttribute = this.mAttributes[i10].get("JPEGInterchangeFormat")) != null) {
            getJpegAttributes(byteOrderedDataInputStream, exifAttribute.getIntValue(this.mExifByteOrder), i10);
        }
    }

    private void saveJpegAttributes(InputStream inputStream, OutputStream outputStream) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        ByteOrderedDataOutputStream byteOrderedDataOutputStream = new ByteOrderedDataOutputStream(outputStream, ByteOrder.BIG_ENDIAN);
        if (dataInputStream.readByte() != -1) {
            throw new IOException("Invalid marker");
        }
        byteOrderedDataOutputStream.writeByte(-1);
        if (dataInputStream.readByte() != -40) {
            throw new IOException("Invalid marker");
        }
        byteOrderedDataOutputStream.writeByte(-40);
        byteOrderedDataOutputStream.writeByte(-1);
        byteOrderedDataOutputStream.writeByte(-31);
        writeExifSegment(byteOrderedDataOutputStream, 6);
        byte[] bArr = new byte[4096];
        while (dataInputStream.readByte() == -1) {
            byte readByte = dataInputStream.readByte();
            if (readByte == -39 || readByte == -38) {
                byteOrderedDataOutputStream.writeByte(-1);
                byteOrderedDataOutputStream.writeByte(readByte);
                copy(dataInputStream, byteOrderedDataOutputStream);
                return;
            }
            if (readByte != -31) {
                byteOrderedDataOutputStream.writeByte(-1);
                byteOrderedDataOutputStream.writeByte(readByte);
                int readUnsignedShort = dataInputStream.readUnsignedShort();
                byteOrderedDataOutputStream.writeUnsignedShort(readUnsignedShort);
                int i10 = readUnsignedShort - 2;
                if (i10 < 0) {
                    throw new IOException("Invalid length");
                }
                while (i10 > 0) {
                    int read = dataInputStream.read(bArr, 0, Math.min(i10, 4096));
                    if (read >= 0) {
                        byteOrderedDataOutputStream.write(bArr, 0, read);
                        i10 -= read;
                    }
                }
            } else {
                int readUnsignedShort2 = dataInputStream.readUnsignedShort();
                int i11 = readUnsignedShort2 - 2;
                if (i11 < 0) {
                    throw new IOException("Invalid length");
                }
                byte[] bArr2 = new byte[6];
                if (i11 >= 6) {
                    if (dataInputStream.read(bArr2) != 6) {
                        throw new IOException("Invalid exif");
                    }
                    if (Arrays.equals(bArr2, IDENTIFIER_EXIF_APP1)) {
                        int i12 = readUnsignedShort2 - 8;
                        if (dataInputStream.skipBytes(i12) != i12) {
                            throw new IOException("Invalid length");
                        }
                    }
                }
                byteOrderedDataOutputStream.writeByte(-1);
                byteOrderedDataOutputStream.writeByte(readByte);
                byteOrderedDataOutputStream.writeUnsignedShort(readUnsignedShort2);
                if (i11 >= 6) {
                    i11 = readUnsignedShort2 - 8;
                    byteOrderedDataOutputStream.write(bArr2);
                }
                while (i11 > 0) {
                    int read2 = dataInputStream.read(bArr, 0, Math.min(i11, 4096));
                    if (read2 >= 0) {
                        byteOrderedDataOutputStream.write(bArr, 0, read2);
                        i11 -= read2;
                    }
                }
            }
        }
        throw new IOException("Invalid marker");
    }

    private void setThumbnailData(ByteOrderedDataInputStream byteOrderedDataInputStream) throws IOException {
        HashMap<String, ExifAttribute> hashMap = this.mAttributes[4];
        ExifAttribute exifAttribute = hashMap.get("Compression");
        if (exifAttribute == null) {
            this.mThumbnailCompression = 6;
            handleThumbnailFromJfif(byteOrderedDataInputStream, hashMap);
            return;
        }
        int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
        this.mThumbnailCompression = intValue;
        if (intValue != 1) {
            if (intValue == 6) {
                handleThumbnailFromJfif(byteOrderedDataInputStream, hashMap);
                return;
            } else if (intValue != 7) {
                return;
            }
        }
        if (isSupportedDataType(hashMap)) {
            handleThumbnailFromStrips(byteOrderedDataInputStream, hashMap);
        }
    }

    private void swapBasedOnImageSize(int i10, int i11) throws IOException {
        if (this.mAttributes[i10].isEmpty() || this.mAttributes[i11].isEmpty()) {
            return;
        }
        ExifAttribute exifAttribute = this.mAttributes[i10].get("ImageLength");
        ExifAttribute exifAttribute2 = this.mAttributes[i10].get("ImageWidth");
        ExifAttribute exifAttribute3 = this.mAttributes[i11].get("ImageLength");
        ExifAttribute exifAttribute4 = this.mAttributes[i11].get("ImageWidth");
        if (exifAttribute == null || exifAttribute2 == null || exifAttribute3 == null || exifAttribute4 == null) {
            return;
        }
        int intValue = exifAttribute.getIntValue(this.mExifByteOrder);
        int intValue2 = exifAttribute2.getIntValue(this.mExifByteOrder);
        int intValue3 = exifAttribute3.getIntValue(this.mExifByteOrder);
        int intValue4 = exifAttribute4.getIntValue(this.mExifByteOrder);
        if (intValue >= intValue3 || intValue2 >= intValue4) {
            return;
        }
        HashMap<String, ExifAttribute>[] hashMapArr = this.mAttributes;
        HashMap<String, ExifAttribute> hashMap = hashMapArr[i10];
        hashMapArr[i10] = hashMapArr[i11];
        hashMapArr[i11] = hashMap;
    }

    private boolean updateAttribute(String str, ExifAttribute exifAttribute) {
        boolean z10 = false;
        for (int i10 = 0; i10 < EXIF_TAGS.length; i10++) {
            if (this.mAttributes[i10].containsKey(str)) {
                this.mAttributes[i10].put(str, exifAttribute);
                z10 = true;
            }
        }
        return z10;
    }

    private void updateImageSizeValues(ByteOrderedDataInputStream byteOrderedDataInputStream, int i10) throws IOException {
        ExifAttribute createUShort;
        ExifAttribute createUShort2;
        ExifAttribute exifAttribute = this.mAttributes[i10].get("DefaultCropSize");
        ExifAttribute exifAttribute2 = this.mAttributes[i10].get("SensorTopBorder");
        ExifAttribute exifAttribute3 = this.mAttributes[i10].get("SensorLeftBorder");
        ExifAttribute exifAttribute4 = this.mAttributes[i10].get("SensorBottomBorder");
        ExifAttribute exifAttribute5 = this.mAttributes[i10].get("SensorRightBorder");
        if (exifAttribute == null) {
            if (exifAttribute2 == null || exifAttribute3 == null || exifAttribute4 == null || exifAttribute5 == null) {
                retrieveJpegImageSize(byteOrderedDataInputStream, i10);
                return;
            }
            int intValue = exifAttribute2.getIntValue(this.mExifByteOrder);
            int intValue2 = exifAttribute4.getIntValue(this.mExifByteOrder);
            int intValue3 = exifAttribute5.getIntValue(this.mExifByteOrder);
            int intValue4 = exifAttribute3.getIntValue(this.mExifByteOrder);
            if (intValue2 <= intValue || intValue3 <= intValue4) {
                return;
            }
            ExifAttribute createUShort3 = ExifAttribute.createUShort(intValue2 - intValue, this.mExifByteOrder);
            ExifAttribute createUShort4 = ExifAttribute.createUShort(intValue3 - intValue4, this.mExifByteOrder);
            this.mAttributes[i10].put("ImageLength", createUShort3);
            this.mAttributes[i10].put("ImageWidth", createUShort4);
            return;
        }
        if (exifAttribute.format == 5) {
            Rational[] rationalArr = (Rational[]) exifAttribute.getValue(this.mExifByteOrder);
            if (rationalArr == null || rationalArr.length != 2) {
                Log.w(TAG, "Invalid crop size values. cropSize=" + Arrays.toString(rationalArr));
                return;
            }
            createUShort = ExifAttribute.createURational(rationalArr[0], this.mExifByteOrder);
            createUShort2 = ExifAttribute.createURational(rationalArr[1], this.mExifByteOrder);
        } else {
            int[] iArr = (int[]) exifAttribute.getValue(this.mExifByteOrder);
            if (iArr == null || iArr.length != 2) {
                Log.w(TAG, "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                return;
            }
            createUShort = ExifAttribute.createUShort(iArr[0], this.mExifByteOrder);
            createUShort2 = ExifAttribute.createUShort(iArr[1], this.mExifByteOrder);
        }
        this.mAttributes[i10].put("ImageWidth", createUShort);
        this.mAttributes[i10].put("ImageLength", createUShort2);
    }

    private void validateImages(InputStream inputStream) throws IOException {
        swapBasedOnImageSize(0, 5);
        swapBasedOnImageSize(0, 4);
        swapBasedOnImageSize(5, 4);
        ExifAttribute exifAttribute = this.mAttributes[1].get("PixelXDimension");
        ExifAttribute exifAttribute2 = this.mAttributes[1].get("PixelYDimension");
        if (exifAttribute != null && exifAttribute2 != null) {
            this.mAttributes[0].put("ImageWidth", exifAttribute);
            this.mAttributes[0].put("ImageLength", exifAttribute2);
        }
        if (this.mAttributes[4].isEmpty() && isThumbnail(this.mAttributes[5])) {
            HashMap<String, ExifAttribute>[] hashMapArr = this.mAttributes;
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap<>();
        }
        if (isThumbnail(this.mAttributes[4])) {
            return;
        }
        Log.d(TAG, "No image meets the size requirements of a thumbnail image.");
    }

    private int writeExifSegment(ByteOrderedDataOutputStream byteOrderedDataOutputStream, int i10) throws IOException {
        ExifTag[][] exifTagArr = EXIF_TAGS;
        int[] iArr = new int[exifTagArr.length];
        int[] iArr2 = new int[exifTagArr.length];
        for (ExifTag exifTag : EXIF_POINTER_TAGS) {
            removeAttribute(exifTag.name);
        }
        removeAttribute(JPEG_INTERCHANGE_FORMAT_TAG.name);
        removeAttribute(JPEG_INTERCHANGE_FORMAT_LENGTH_TAG.name);
        for (int i11 = 0; i11 < EXIF_TAGS.length; i11++) {
            for (Object obj : this.mAttributes[i11].entrySet().toArray()) {
                Map.Entry entry = (Map.Entry) obj;
                if (entry.getValue() == null) {
                    this.mAttributes[i11].remove(entry.getKey());
                }
            }
        }
        if (!this.mAttributes[1].isEmpty()) {
            this.mAttributes[0].put(EXIF_POINTER_TAGS[1].name, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (!this.mAttributes[2].isEmpty()) {
            this.mAttributes[0].put(EXIF_POINTER_TAGS[2].name, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (!this.mAttributes[3].isEmpty()) {
            this.mAttributes[1].put(EXIF_POINTER_TAGS[3].name, ExifAttribute.createULong(0L, this.mExifByteOrder));
        }
        if (this.mHasThumbnail) {
            this.mAttributes[4].put(JPEG_INTERCHANGE_FORMAT_TAG.name, ExifAttribute.createULong(0L, this.mExifByteOrder));
            this.mAttributes[4].put(JPEG_INTERCHANGE_FORMAT_LENGTH_TAG.name, ExifAttribute.createULong(this.mThumbnailLength, this.mExifByteOrder));
        }
        for (int i12 = 0; i12 < EXIF_TAGS.length; i12++) {
            Iterator<Map.Entry<String, ExifAttribute>> it = this.mAttributes[i12].entrySet().iterator();
            int i13 = 0;
            while (it.hasNext()) {
                int size = it.next().getValue().size();
                if (size > 4) {
                    i13 += size;
                }
            }
            iArr2[i12] = iArr2[i12] + i13;
        }
        int i14 = 8;
        for (int i15 = 0; i15 < EXIF_TAGS.length; i15++) {
            if (!this.mAttributes[i15].isEmpty()) {
                iArr[i15] = i14;
                i14 += (this.mAttributes[i15].size() * 12) + 6 + iArr2[i15];
            }
        }
        if (this.mHasThumbnail) {
            this.mAttributes[4].put(JPEG_INTERCHANGE_FORMAT_TAG.name, ExifAttribute.createULong(i14, this.mExifByteOrder));
            this.mThumbnailOffset = i10 + i14;
            i14 += this.mThumbnailLength;
        }
        int i16 = i14 + 8;
        if (!this.mAttributes[1].isEmpty()) {
            this.mAttributes[0].put(EXIF_POINTER_TAGS[1].name, ExifAttribute.createULong(iArr[1], this.mExifByteOrder));
        }
        if (!this.mAttributes[2].isEmpty()) {
            this.mAttributes[0].put(EXIF_POINTER_TAGS[2].name, ExifAttribute.createULong(iArr[2], this.mExifByteOrder));
        }
        if (!this.mAttributes[3].isEmpty()) {
            this.mAttributes[1].put(EXIF_POINTER_TAGS[3].name, ExifAttribute.createULong(iArr[3], this.mExifByteOrder));
        }
        byteOrderedDataOutputStream.writeUnsignedShort(i16);
        byteOrderedDataOutputStream.write(IDENTIFIER_EXIF_APP1);
        byteOrderedDataOutputStream.writeShort(this.mExifByteOrder == ByteOrder.BIG_ENDIAN ? BYTE_ALIGN_MM : BYTE_ALIGN_II);
        byteOrderedDataOutputStream.setByteOrder(this.mExifByteOrder);
        byteOrderedDataOutputStream.writeUnsignedShort(42);
        byteOrderedDataOutputStream.writeUnsignedInt(8L);
        for (int i17 = 0; i17 < EXIF_TAGS.length; i17++) {
            if (!this.mAttributes[i17].isEmpty()) {
                byteOrderedDataOutputStream.writeUnsignedShort(this.mAttributes[i17].size());
                int size2 = iArr[i17] + 2 + (this.mAttributes[i17].size() * 12) + 4;
                for (Map.Entry<String, ExifAttribute> entry2 : this.mAttributes[i17].entrySet()) {
                    int i18 = sExifTagMapsForWriting[i17].get(entry2.getKey()).number;
                    ExifAttribute value = entry2.getValue();
                    int size3 = value.size();
                    byteOrderedDataOutputStream.writeUnsignedShort(i18);
                    byteOrderedDataOutputStream.writeUnsignedShort(value.format);
                    byteOrderedDataOutputStream.writeInt(value.numberOfComponents);
                    if (size3 > 4) {
                        byteOrderedDataOutputStream.writeUnsignedInt(size2);
                        size2 += size3;
                    } else {
                        byteOrderedDataOutputStream.write(value.bytes);
                        if (size3 < 4) {
                            while (size3 < 4) {
                                byteOrderedDataOutputStream.writeByte(0);
                                size3++;
                            }
                        }
                    }
                }
                if (i17 != 0 || this.mAttributes[4].isEmpty()) {
                    byteOrderedDataOutputStream.writeUnsignedInt(0L);
                } else {
                    byteOrderedDataOutputStream.writeUnsignedInt(iArr[4]);
                }
                Iterator<Map.Entry<String, ExifAttribute>> it2 = this.mAttributes[i17].entrySet().iterator();
                while (it2.hasNext()) {
                    byte[] bArr = it2.next().getValue().bytes;
                    if (bArr.length > 4) {
                        byteOrderedDataOutputStream.write(bArr, 0, bArr.length);
                    }
                }
            }
        }
        if (this.mHasThumbnail) {
            byteOrderedDataOutputStream.write(getThumbnailBytes());
        }
        byteOrderedDataOutputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        return i16;
    }

    public void flipHorizontally() {
        int i10 = 1;
        switch (getAttributeInt("Orientation", 1)) {
            case 1:
                i10 = 2;
                break;
            case 2:
                break;
            case 3:
                i10 = 4;
                break;
            case 4:
                i10 = 3;
                break;
            case 5:
                i10 = 6;
                break;
            case 6:
                i10 = 5;
                break;
            case 7:
                i10 = 8;
                break;
            case 8:
                i10 = 7;
                break;
            default:
                i10 = 0;
                break;
        }
        setAttribute("Orientation", Integer.toString(i10));
    }

    public void flipVertically() {
        int i10 = 1;
        switch (getAttributeInt("Orientation", 1)) {
            case 1:
                i10 = 4;
                break;
            case 2:
                i10 = 3;
                break;
            case 3:
                i10 = 2;
                break;
            case 4:
                break;
            case 5:
                i10 = 8;
                break;
            case 6:
                i10 = 7;
                break;
            case 7:
                i10 = 6;
                break;
            case 8:
                i10 = 5;
                break;
            default:
                i10 = 0;
                break;
        }
        setAttribute("Orientation", Integer.toString(i10));
    }

    public double getAltitude(double d10) {
        double attributeDouble = getAttributeDouble("GPSAltitude", -1.0d);
        int attributeInt = getAttributeInt("GPSAltitudeRef", -1);
        if (attributeDouble < 0.0d || attributeInt < 0) {
            return d10;
        }
        return attributeDouble * (attributeInt != 1 ? 1 : -1);
    }

    public String getAttribute(String str) {
        ExifAttribute exifAttribute = getExifAttribute(str);
        if (exifAttribute != null) {
            if (!sTagSetForCompatibility.contains(str)) {
                return exifAttribute.getStringValue(this.mExifByteOrder);
            }
            if (str.equals("GPSTimeStamp")) {
                int i10 = exifAttribute.format;
                if (i10 != 5 && i10 != 10) {
                    Log.w(TAG, "GPS Timestamp format is not rational. format=" + exifAttribute.format);
                    return null;
                }
                Rational[] rationalArr = (Rational[]) exifAttribute.getValue(this.mExifByteOrder);
                if (rationalArr == null || rationalArr.length != 3) {
                    Log.w(TAG, "Invalid GPS Timestamp array. array=" + Arrays.toString(rationalArr));
                    return null;
                }
                Rational rational = rationalArr[0];
                Integer valueOf = Integer.valueOf((int) (((float) rational.numerator) / ((float) rational.denominator)));
                Rational rational2 = rationalArr[1];
                Integer valueOf2 = Integer.valueOf((int) (((float) rational2.numerator) / ((float) rational2.denominator)));
                Rational rational3 = rationalArr[2];
                return String.format("%02d:%02d:%02d", valueOf, valueOf2, Integer.valueOf((int) (((float) rational3.numerator) / ((float) rational3.denominator))));
            }
            try {
                return Double.toString(exifAttribute.getDoubleValue(this.mExifByteOrder));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public double getAttributeDouble(String str, double d10) {
        ExifAttribute exifAttribute = getExifAttribute(str);
        if (exifAttribute == null) {
            return d10;
        }
        try {
            return exifAttribute.getDoubleValue(this.mExifByteOrder);
        } catch (NumberFormatException unused) {
            return d10;
        }
    }

    public int getAttributeInt(String str, int i10) {
        ExifAttribute exifAttribute = getExifAttribute(str);
        if (exifAttribute == null) {
            return i10;
        }
        try {
            return exifAttribute.getIntValue(this.mExifByteOrder);
        } catch (NumberFormatException unused) {
            return i10;
        }
    }

    public long getDateTime() {
        String attribute = getAttribute("DateTime");
        if (attribute != null && sNonZeroTimePattern.matcher(attribute).matches()) {
            try {
                Date parse = sFormatter.parse(attribute, new ParsePosition(0));
                if (parse == null) {
                    return -1L;
                }
                long time = parse.getTime();
                String attribute2 = getAttribute("SubSecTime");
                if (attribute2 == null) {
                    return time;
                }
                try {
                    long parseLong = Long.parseLong(attribute2);
                    while (parseLong > 1000) {
                        parseLong /= 10;
                    }
                    return time + parseLong;
                } catch (NumberFormatException unused) {
                    return time;
                }
            } catch (IllegalArgumentException unused2) {
            }
        }
        return -1L;
    }

    public long getGpsDateTime() {
        String attribute = getAttribute("GPSDateStamp");
        String attribute2 = getAttribute("GPSTimeStamp");
        if (attribute != null && attribute2 != null) {
            Pattern pattern = sNonZeroTimePattern;
            if (pattern.matcher(attribute).matches() || pattern.matcher(attribute2).matches()) {
                try {
                    Date parse = sFormatter.parse(attribute + C15883c.f126249O + attribute2, new ParsePosition(0));
                    if (parse == null) {
                        return -1L;
                    }
                    return parse.getTime();
                } catch (IllegalArgumentException unused) {
                }
            }
        }
        return -1L;
    }

    @Deprecated
    public boolean getLatLong(float[] fArr) {
        double[] latLong = getLatLong();
        if (latLong == null) {
            return false;
        }
        fArr[0] = (float) latLong[0];
        fArr[1] = (float) latLong[1];
        return true;
    }

    public int getRotationDegrees() {
        switch (getAttributeInt("Orientation", 1)) {
            case 3:
            case 4:
                return 180;
            case 5:
            case 8:
                return 270;
            case 6:
            case 7:
                return 90;
            default:
                return 0;
        }
    }

    public byte[] getThumbnail() {
        int i10 = this.mThumbnailCompression;
        if (i10 == 6 || i10 == 7) {
            return getThumbnailBytes();
        }
        return null;
    }

    public Bitmap getThumbnailBitmap() {
        if (!this.mHasThumbnail) {
            return null;
        }
        if (this.mThumbnailBytes == null) {
            this.mThumbnailBytes = getThumbnailBytes();
        }
        int i10 = this.mThumbnailCompression;
        if (i10 == 6 || i10 == 7) {
            return BitmapFactory.decodeByteArray(this.mThumbnailBytes, 0, this.mThumbnailLength);
        }
        if (i10 == 1) {
            int length = this.mThumbnailBytes.length / 3;
            int[] iArr = new int[length];
            for (int i11 = 0; i11 < length; i11++) {
                byte[] bArr = this.mThumbnailBytes;
                int i12 = i11 * 3;
                iArr[i11] = (bArr[i12] << 16) + (bArr[i12 + 1] << 8) + bArr[i12 + 2];
            }
            ExifAttribute exifAttribute = this.mAttributes[4].get("ImageLength");
            ExifAttribute exifAttribute2 = this.mAttributes[4].get("ImageWidth");
            if (exifAttribute != null && exifAttribute2 != null) {
                return Bitmap.createBitmap(iArr, exifAttribute2.getIntValue(this.mExifByteOrder), exifAttribute.getIntValue(this.mExifByteOrder), Bitmap.Config.ARGB_8888);
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public byte[] getThumbnailBytes() {
        InputStream inputStream;
        Closeable closeable = null;
        if (!this.mHasThumbnail) {
            return null;
        }
        byte[] bArr = this.mThumbnailBytes;
        try {
            if (bArr != 0) {
                return bArr;
            }
            try {
                inputStream = this.mAssetInputStream;
                if (inputStream != null) {
                    try {
                        if (!inputStream.markSupported()) {
                            Log.d(TAG, "Cannot read thumbnail from inputstream without mark/reset support");
                            closeQuietly(inputStream);
                            return null;
                        }
                        inputStream.reset();
                    } catch (IOException e10) {
                        e = e10;
                        Log.d(TAG, "Encountered exception while getting thumbnail", e);
                        closeQuietly(inputStream);
                        return null;
                    }
                } else {
                    inputStream = this.mFilename != null ? new FileInputStream(this.mFilename) : null;
                }
                if (inputStream == null) {
                    throw new FileNotFoundException();
                }
                if (inputStream.skip(this.mThumbnailOffset) != this.mThumbnailOffset) {
                    throw new IOException("Corrupted image");
                }
                byte[] bArr2 = new byte[this.mThumbnailLength];
                if (inputStream.read(bArr2) != this.mThumbnailLength) {
                    throw new IOException("Corrupted image");
                }
                this.mThumbnailBytes = bArr2;
                closeQuietly(inputStream);
                return bArr2;
            } catch (IOException e11) {
                e = e11;
                inputStream = null;
            } catch (Throwable th2) {
                th = th2;
                closeQuietly(closeable);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            closeable = bArr;
        }
    }

    public long[] getThumbnailRange() {
        if (this.mHasThumbnail) {
            return new long[]{this.mThumbnailOffset, this.mThumbnailLength};
        }
        return null;
    }

    public boolean hasThumbnail() {
        return this.mHasThumbnail;
    }

    public boolean isFlipped() {
        int attributeInt = getAttributeInt("Orientation", 1);
        return attributeInt == 2 || attributeInt == 7 || attributeInt == 4 || attributeInt == 5;
    }

    public boolean isThumbnailCompressed() {
        int i10 = this.mThumbnailCompression;
        return i10 == 6 || i10 == 7;
    }

    public void resetOrientation() {
        setAttribute("Orientation", Integer.toString(1));
    }

    public void rotate(int i10) {
        if (i10 % 90 != 0) {
            throw new IllegalArgumentException("degree should be a multiple of 90");
        }
        int attributeInt = getAttributeInt("Orientation", 1);
        List<Integer> list = ROTATION_ORDER;
        if (list.contains(Integer.valueOf(attributeInt))) {
            int indexOf = (list.indexOf(Integer.valueOf(attributeInt)) + (i10 / 90)) % 4;
            r4 = list.get(indexOf + (indexOf < 0 ? 4 : 0)).intValue();
        } else {
            List<Integer> list2 = FLIPPED_ROTATION_ORDER;
            if (list2.contains(Integer.valueOf(attributeInt))) {
                int indexOf2 = (list2.indexOf(Integer.valueOf(attributeInt)) + (i10 / 90)) % 4;
                r4 = list2.get(indexOf2 + (indexOf2 < 0 ? 4 : 0)).intValue();
            }
        }
        setAttribute("Orientation", Integer.toString(r4));
    }

    public void saveAttributes() throws IOException {
        FileOutputStream fileOutputStream;
        Throwable th2;
        FileInputStream fileInputStream;
        if (!this.mIsSupportedFile || this.mMimeType != 4) {
            throw new IOException("ExifInterface only supports saving attributes on JPEG formats.");
        }
        if (this.mFilename == null) {
            throw new IOException("ExifInterface does not support saving attributes for the current input.");
        }
        this.mThumbnailBytes = getThumbnail();
        File file = new File(this.mFilename + ".tmp");
        if (!new File(this.mFilename).renameTo(file)) {
            throw new IOException("Could not rename to " + file.getAbsolutePath());
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(this.mFilename);
                try {
                    saveJpegAttributes(fileInputStream, fileOutputStream);
                    closeQuietly(fileInputStream);
                    closeQuietly(fileOutputStream);
                    file.delete();
                    this.mThumbnailBytes = null;
                } catch (Throwable th3) {
                    th2 = th3;
                    closeQuietly(fileInputStream);
                    closeQuietly(fileOutputStream);
                    file.delete();
                    throw th2;
                }
            } catch (Throwable th4) {
                fileOutputStream = null;
                th2 = th4;
            }
        } catch (Throwable th5) {
            fileOutputStream = null;
            th2 = th5;
            fileInputStream = null;
        }
    }

    public void setAltitude(double d10) {
        String str = d10 >= 0.0d ? "0" : "1";
        setAttribute("GPSAltitude", new Rational(Math.abs(d10)).toString());
        setAttribute("GPSAltitudeRef", str);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:47:0x01b1. Please report as an issue. */
    public void setAttribute(String str, String str2) {
        ExifTag exifTag;
        int i10;
        String str3;
        int i11;
        String str4 = str2;
        String str5 = "ISOSpeedRatings".equals(str) ? TAG_PHOTOGRAPHIC_SENSITIVITY : str;
        int i12 = 2;
        String str6 = TAG;
        int i13 = 1;
        if (str4 != null && sTagSetForCompatibility.contains(str5)) {
            if (str5.equals("GPSTimeStamp")) {
                Matcher matcher = sGpsTimestampPattern.matcher(str4);
                if (!matcher.find()) {
                    Log.w(TAG, "Invalid value for " + str5 + " : " + str4);
                    return;
                }
                str4 = Integer.parseInt(matcher.group(1)) + "/1," + Integer.parseInt(matcher.group(2)) + "/1," + Integer.parseInt(matcher.group(3)) + "/1";
            } else {
                try {
                    str4 = new Rational(Double.parseDouble(str2)).toString();
                } catch (NumberFormatException unused) {
                    Log.w(TAG, "Invalid value for " + str5 + " : " + str4);
                    return;
                }
            }
        }
        int i14 = 0;
        int i15 = 0;
        while (i15 < EXIF_TAGS.length) {
            if ((i15 != 4 || this.mHasThumbnail) && (exifTag = sExifTagMapsForWriting[i15].get(str5)) != null) {
                if (str4 == null) {
                    this.mAttributes[i15].remove(str5);
                } else {
                    Pair<Integer, Integer> guessDataFormat = guessDataFormat(str4);
                    int i16 = -1;
                    if (exifTag.primaryFormat == guessDataFormat.first.intValue() || exifTag.primaryFormat == guessDataFormat.second.intValue()) {
                        i10 = exifTag.primaryFormat;
                    } else {
                        int i17 = exifTag.secondaryFormat;
                        if (i17 == -1 || !(i17 == guessDataFormat.first.intValue() || exifTag.secondaryFormat == guessDataFormat.second.intValue())) {
                            int i18 = exifTag.primaryFormat;
                            if (i18 == i13 || i18 == 7 || i18 == i12) {
                                i10 = i18;
                            } else {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("Given tag (");
                                sb2.append(str5);
                                sb2.append(") value didn't match with one of expected ");
                                sb2.append("formats: ");
                                String[] strArr = IFD_FORMAT_NAMES;
                                sb2.append(strArr[exifTag.primaryFormat]);
                                sb2.append(exifTag.secondaryFormat == -1 ? "" : ", " + strArr[exifTag.secondaryFormat]);
                                sb2.append(" (guess: ");
                                sb2.append(strArr[guessDataFormat.first.intValue()]);
                                sb2.append(guessDataFormat.second.intValue() != -1 ? ", " + strArr[guessDataFormat.second.intValue()] : "");
                                sb2.append(")");
                                Log.w(str6, sb2.toString());
                            }
                        } else {
                            i10 = exifTag.secondaryFormat;
                        }
                    }
                    switch (i10) {
                        case 1:
                            str3 = str6;
                            i11 = i13;
                            this.mAttributes[i15].put(str5, ExifAttribute.createByte(str4));
                            break;
                        case 2:
                        case 7:
                            str3 = str6;
                            i11 = i13;
                            this.mAttributes[i15].put(str5, ExifAttribute.createString(str4));
                            break;
                        case 3:
                            str3 = str6;
                            i11 = i13;
                            String[] split = str4.split(DocLint.SEPARATOR, -1);
                            int[] iArr = new int[split.length];
                            for (int i19 = 0; i19 < split.length; i19++) {
                                iArr[i19] = Integer.parseInt(split[i19]);
                            }
                            this.mAttributes[i15].put(str5, ExifAttribute.createUShort(iArr, this.mExifByteOrder));
                            break;
                        case 4:
                            str3 = str6;
                            i11 = i13;
                            String[] split2 = str4.split(DocLint.SEPARATOR, -1);
                            long[] jArr = new long[split2.length];
                            for (int i20 = 0; i20 < split2.length; i20++) {
                                jArr[i20] = Long.parseLong(split2[i20]);
                            }
                            this.mAttributes[i15].put(str5, ExifAttribute.createULong(jArr, this.mExifByteOrder));
                            break;
                        case 5:
                            str3 = str6;
                            String[] split3 = str4.split(DocLint.SEPARATOR, -1);
                            Rational[] rationalArr = new Rational[split3.length];
                            int i21 = 0;
                            while (i21 < split3.length) {
                                String[] split4 = split3[i21].split("/", i16);
                                rationalArr[i21] = new Rational((long) Double.parseDouble(split4[0]), (long) Double.parseDouble(split4[1]));
                                i21++;
                                i16 = -1;
                            }
                            i11 = 1;
                            this.mAttributes[i15].put(str5, ExifAttribute.createURational(rationalArr, this.mExifByteOrder));
                            break;
                        case 6:
                        case 8:
                        case 11:
                        default:
                            Log.w(str6, "Data format isn't one of expected formats: " + i10);
                            break;
                        case 9:
                            str3 = str6;
                            String[] split5 = str4.split(DocLint.SEPARATOR, -1);
                            int[] iArr2 = new int[split5.length];
                            for (int i22 = 0; i22 < split5.length; i22++) {
                                iArr2[i22] = Integer.parseInt(split5[i22]);
                            }
                            this.mAttributes[i15].put(str5, ExifAttribute.createSLong(iArr2, this.mExifByteOrder));
                            i11 = 1;
                            break;
                        case 10:
                            String[] split6 = str4.split(DocLint.SEPARATOR, -1);
                            Rational[] rationalArr2 = new Rational[split6.length];
                            int i23 = i14;
                            while (i23 < split6.length) {
                                String[] split7 = split6[i23].split("/", -1);
                                rationalArr2[i23] = new Rational((long) Double.parseDouble(split7[i14]), (long) Double.parseDouble(split7[i13]));
                                i23++;
                                str6 = str6;
                                i13 = 1;
                                i14 = 0;
                            }
                            str3 = str6;
                            this.mAttributes[i15].put(str5, ExifAttribute.createSRational(rationalArr2, this.mExifByteOrder));
                            i11 = 1;
                            break;
                        case 12:
                            String[] split8 = str4.split(DocLint.SEPARATOR, -1);
                            double[] dArr = new double[split8.length];
                            for (int i24 = i14; i24 < split8.length; i24++) {
                                dArr[i24] = Double.parseDouble(split8[i24]);
                            }
                            this.mAttributes[i15].put(str5, ExifAttribute.createDouble(dArr, this.mExifByteOrder));
                            break;
                    }
                    i15++;
                    str6 = str3;
                    i13 = i11;
                    i12 = 2;
                    i14 = 0;
                }
            }
            str3 = str6;
            i11 = i13;
            i15++;
            str6 = str3;
            i13 = i11;
            i12 = 2;
            i14 = 0;
        }
    }

    public void setDateTime(long j10) {
        setAttribute("DateTime", sFormatter.format(new Date(j10)));
        setAttribute("SubSecTime", Long.toString(j10 % 1000));
    }

    public void setGpsInfo(Location location) {
        if (location == null) {
            return;
        }
        setAttribute("GPSProcessingMethod", location.getProvider());
        setLatLong(location.getLatitude(), location.getLongitude());
        setAltitude(location.getAltitude());
        setAttribute("GPSSpeedRef", "K");
        setAttribute("GPSSpeed", new Rational((location.getSpeed() * ((float) TimeUnit.HOURS.toSeconds(1L))) / 1000.0f).toString());
        String[] split = sFormatter.format(new Date(location.getTime())).split("\\s+", -1);
        setAttribute("GPSDateStamp", split[0]);
        setAttribute("GPSTimeStamp", split[1]);
    }

    public void setLatLong(double d10, double d11) {
        if (d10 < -90.0d || d10 > 90.0d || Double.isNaN(d10)) {
            throw new IllegalArgumentException("Latitude value " + d10 + " is not valid.");
        }
        if (d11 < -180.0d || d11 > 180.0d || Double.isNaN(d11)) {
            throw new IllegalArgumentException("Longitude value " + d11 + " is not valid.");
        }
        setAttribute("GPSLatitudeRef", d10 >= 0.0d ? "N" : "S");
        setAttribute("GPSLatitude", convertDecimalDegree(Math.abs(d10)));
        setAttribute("GPSLongitudeRef", d11 >= 0.0d ? "E" : LONGITUDE_WEST);
        setAttribute("GPSLongitude", convertDecimalDegree(Math.abs(d11)));
    }

    public static class ByteOrderedDataInputStream extends InputStream implements DataInput {
        private ByteOrder mByteOrder;
        private DataInputStream mDataInputStream;
        final int mLength;
        int mPosition;
        private static final ByteOrder LITTLE_ENDIAN = ByteOrder.LITTLE_ENDIAN;
        private static final ByteOrder BIG_ENDIAN = ByteOrder.BIG_ENDIAN;

        public ByteOrderedDataInputStream(InputStream inputStream) throws IOException {
            this.mByteOrder = ByteOrder.BIG_ENDIAN;
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            this.mDataInputStream = dataInputStream;
            int available = dataInputStream.available();
            this.mLength = available;
            this.mPosition = 0;
            this.mDataInputStream.mark(available);
        }

        @Override
        public int available() throws IOException {
            return this.mDataInputStream.available();
        }

        public int peek() {
            return this.mPosition;
        }

        @Override
        public int read() throws IOException {
            this.mPosition++;
            return this.mDataInputStream.read();
        }

        @Override
        public boolean readBoolean() throws IOException {
            this.mPosition++;
            return this.mDataInputStream.readBoolean();
        }

        @Override
        public byte readByte() throws IOException {
            int i10 = this.mPosition + 1;
            this.mPosition = i10;
            if (i10 > this.mLength) {
                throw new EOFException();
            }
            int read = this.mDataInputStream.read();
            if (read >= 0) {
                return (byte) read;
            }
            throw new EOFException();
        }

        @Override
        public char readChar() throws IOException {
            this.mPosition += 2;
            return this.mDataInputStream.readChar();
        }

        @Override
        public double readDouble() throws IOException {
            return Double.longBitsToDouble(readLong());
        }

        @Override
        public float readFloat() throws IOException {
            return Float.intBitsToFloat(readInt());
        }

        @Override
        public void readFully(byte[] bArr, int i10, int i11) throws IOException {
            int i12 = this.mPosition + i11;
            this.mPosition = i12;
            if (i12 <= this.mLength) {
                if (this.mDataInputStream.read(bArr, i10, i11) != i11) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        @Override
        public int readInt() throws IOException {
            int i10 = this.mPosition + 4;
            this.mPosition = i10;
            if (i10 > this.mLength) {
                throw new EOFException();
            }
            int read = this.mDataInputStream.read();
            int read2 = this.mDataInputStream.read();
            int read3 = this.mDataInputStream.read();
            int read4 = this.mDataInputStream.read();
            if ((read | read2 | read3 | read4) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == LITTLE_ENDIAN) {
                return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
            }
            if (byteOrder == BIG_ENDIAN) {
                return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
            }
            throw new IOException("Invalid byte order: " + ((Object) this.mByteOrder));
        }

        @Override
        public String readLine() throws IOException {
            Log.d(ExifInterface.TAG, "Currently unsupported");
            return null;
        }

        @Override
        public long readLong() throws IOException {
            int i10 = this.mPosition + 8;
            this.mPosition = i10;
            if (i10 > this.mLength) {
                throw new EOFException();
            }
            int read = this.mDataInputStream.read();
            int read2 = this.mDataInputStream.read();
            int read3 = this.mDataInputStream.read();
            int read4 = this.mDataInputStream.read();
            int read5 = this.mDataInputStream.read();
            int read6 = this.mDataInputStream.read();
            int read7 = this.mDataInputStream.read();
            int read8 = this.mDataInputStream.read();
            if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == LITTLE_ENDIAN) {
                return (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
            }
            if (byteOrder == BIG_ENDIAN) {
                return (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8) + read8;
            }
            throw new IOException("Invalid byte order: " + ((Object) this.mByteOrder));
        }

        @Override
        public short readShort() throws IOException {
            int i10 = this.mPosition + 2;
            this.mPosition = i10;
            if (i10 > this.mLength) {
                throw new EOFException();
            }
            int read = this.mDataInputStream.read();
            int read2 = this.mDataInputStream.read();
            if ((read | read2) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == LITTLE_ENDIAN) {
                return (short) ((read2 << 8) + read);
            }
            if (byteOrder == BIG_ENDIAN) {
                return (short) ((read << 8) + read2);
            }
            throw new IOException("Invalid byte order: " + ((Object) this.mByteOrder));
        }

        @Override
        public String readUTF() throws IOException {
            this.mPosition += 2;
            return this.mDataInputStream.readUTF();
        }

        @Override
        public int readUnsignedByte() throws IOException {
            this.mPosition++;
            return this.mDataInputStream.readUnsignedByte();
        }

        public long readUnsignedInt() throws IOException {
            return readInt() & 4294967295L;
        }

        @Override
        public int readUnsignedShort() throws IOException {
            int i10 = this.mPosition + 2;
            this.mPosition = i10;
            if (i10 > this.mLength) {
                throw new EOFException();
            }
            int read = this.mDataInputStream.read();
            int read2 = this.mDataInputStream.read();
            if ((read | read2) < 0) {
                throw new EOFException();
            }
            ByteOrder byteOrder = this.mByteOrder;
            if (byteOrder == LITTLE_ENDIAN) {
                return (read2 << 8) + read;
            }
            if (byteOrder == BIG_ENDIAN) {
                return (read << 8) + read2;
            }
            throw new IOException("Invalid byte order: " + ((Object) this.mByteOrder));
        }

        public void seek(long j10) throws IOException {
            int i10 = this.mPosition;
            if (i10 > j10) {
                this.mPosition = 0;
                this.mDataInputStream.reset();
                this.mDataInputStream.mark(this.mLength);
            } else {
                j10 -= i10;
            }
            int i11 = (int) j10;
            if (skipBytes(i11) != i11) {
                throw new IOException("Couldn't seek up to the byteCount");
            }
        }

        public void setByteOrder(ByteOrder byteOrder) {
            this.mByteOrder = byteOrder;
        }

        @Override
        public int skipBytes(int i10) throws IOException {
            int min = Math.min(i10, this.mLength - this.mPosition);
            int i11 = 0;
            while (i11 < min) {
                i11 += this.mDataInputStream.skipBytes(min - i11);
            }
            this.mPosition += i11;
            return i11;
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            int read = this.mDataInputStream.read(bArr, i10, i11);
            this.mPosition += read;
            return read;
        }

        @Override
        public void readFully(byte[] bArr) throws IOException {
            int length = this.mPosition + bArr.length;
            this.mPosition = length;
            if (length <= this.mLength) {
                if (this.mDataInputStream.read(bArr, 0, bArr.length) != bArr.length) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        public ByteOrderedDataInputStream(byte[] bArr) throws IOException {
            this(new ByteArrayInputStream(bArr));
        }
    }

    public double[] getLatLong() {
        String attribute = getAttribute("GPSLatitude");
        String attribute2 = getAttribute("GPSLatitudeRef");
        String attribute3 = getAttribute("GPSLongitude");
        String attribute4 = getAttribute("GPSLongitudeRef");
        if (attribute == null || attribute2 == null || attribute3 == null || attribute4 == null) {
            return null;
        }
        try {
            return new double[]{convertRationalLatLonToDouble(attribute, attribute2), convertRationalLatLonToDouble(attribute3, attribute4)};
        } catch (IllegalArgumentException unused) {
            Log.w(TAG, "Latitude/longitude values are not parseable. " + String.format("latValue=%s, latRef=%s, lngValue=%s, lngRef=%s", attribute, attribute2, attribute3, attribute4));
            return null;
        }
    }

    public static class ExifAttribute {
        public final byte[] bytes;
        public final int format;
        public final int numberOfComponents;

        public ExifAttribute(int i10, int i11, byte[] bArr) {
            this.format = i10;
            this.numberOfComponents = i11;
            this.bytes = bArr;
        }

        public static ExifAttribute createByte(String str) {
            if (str.length() == 1 && str.charAt(0) >= '0' && str.charAt(0) <= '1') {
                return new ExifAttribute(1, 1, new byte[]{(byte) (str.charAt(0) - '0')});
            }
            byte[] bytes = str.getBytes(ExifInterface.ASCII);
            return new ExifAttribute(1, bytes.length, bytes);
        }

        public static ExifAttribute createDouble(double[] dArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[12] * dArr.length]);
            wrap.order(byteOrder);
            for (double d10 : dArr) {
                wrap.putDouble(d10);
            }
            return new ExifAttribute(12, dArr.length, wrap.array());
        }

        public static ExifAttribute createSLong(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[9] * iArr.length]);
            wrap.order(byteOrder);
            for (int i10 : iArr) {
                wrap.putInt(i10);
            }
            return new ExifAttribute(9, iArr.length, wrap.array());
        }

        public static ExifAttribute createSRational(Rational[] rationalArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[10] * rationalArr.length]);
            wrap.order(byteOrder);
            for (Rational rational : rationalArr) {
                wrap.putInt((int) rational.numerator);
                wrap.putInt((int) rational.denominator);
            }
            return new ExifAttribute(10, rationalArr.length, wrap.array());
        }

        public static ExifAttribute createString(String str) {
            byte[] bytes = (str + (char) 0).getBytes(ExifInterface.ASCII);
            return new ExifAttribute(2, bytes.length, bytes);
        }

        public static ExifAttribute createULong(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[4] * jArr.length]);
            wrap.order(byteOrder);
            for (long j10 : jArr) {
                wrap.putInt((int) j10);
            }
            return new ExifAttribute(4, jArr.length, wrap.array());
        }

        public static ExifAttribute createURational(Rational[] rationalArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[5] * rationalArr.length]);
            wrap.order(byteOrder);
            for (Rational rational : rationalArr) {
                wrap.putInt((int) rational.numerator);
                wrap.putInt((int) rational.denominator);
            }
            return new ExifAttribute(5, rationalArr.length, wrap.array());
        }

        public static ExifAttribute createUShort(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[3] * iArr.length]);
            wrap.order(byteOrder);
            for (int i10 : iArr) {
                wrap.putShort((short) i10);
            }
            return new ExifAttribute(3, iArr.length, wrap.array());
        }

        public double getDoubleValue(ByteOrder byteOrder) {
            Object value = getValue(byteOrder);
            if (value == null) {
                throw new NumberFormatException("NULL can't be converted to a double value");
            }
            if (value instanceof String) {
                return Double.parseDouble((String) value);
            }
            if (value instanceof long[]) {
                if (((long[]) value).length == 1) {
                    return r5[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (value instanceof int[]) {
                if (((int[]) value).length == 1) {
                    return r5[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (value instanceof double[]) {
                double[] dArr = (double[]) value;
                if (dArr.length == 1) {
                    return dArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (!(value instanceof Rational[])) {
                throw new NumberFormatException("Couldn't find a double value");
            }
            Rational[] rationalArr = (Rational[]) value;
            if (rationalArr.length == 1) {
                return rationalArr[0].calculate();
            }
            throw new NumberFormatException("There are more than one component");
        }

        public int getIntValue(ByteOrder byteOrder) {
            Object value = getValue(byteOrder);
            if (value == null) {
                throw new NumberFormatException("NULL can't be converted to a integer value");
            }
            if (value instanceof String) {
                return Integer.parseInt((String) value);
            }
            if (value instanceof long[]) {
                long[] jArr = (long[]) value;
                if (jArr.length == 1) {
                    return (int) jArr[0];
                }
                throw new NumberFormatException("There are more than one component");
            }
            if (!(value instanceof int[])) {
                throw new NumberFormatException("Couldn't find a integer value");
            }
            int[] iArr = (int[]) value;
            if (iArr.length == 1) {
                return iArr[0];
            }
            throw new NumberFormatException("There are more than one component");
        }

        public String getStringValue(ByteOrder byteOrder) {
            Object value = getValue(byteOrder);
            if (value == null) {
                return null;
            }
            if (value instanceof String) {
                return (String) value;
            }
            StringBuilder sb2 = new StringBuilder();
            int i10 = 0;
            if (value instanceof long[]) {
                long[] jArr = (long[]) value;
                while (i10 < jArr.length) {
                    sb2.append(jArr[i10]);
                    i10++;
                    if (i10 != jArr.length) {
                        sb2.append(DocLint.SEPARATOR);
                    }
                }
                return sb2.toString();
            }
            if (value instanceof int[]) {
                int[] iArr = (int[]) value;
                while (i10 < iArr.length) {
                    sb2.append(iArr[i10]);
                    i10++;
                    if (i10 != iArr.length) {
                        sb2.append(DocLint.SEPARATOR);
                    }
                }
                return sb2.toString();
            }
            if (value instanceof double[]) {
                double[] dArr = (double[]) value;
                while (i10 < dArr.length) {
                    sb2.append(dArr[i10]);
                    i10++;
                    if (i10 != dArr.length) {
                        sb2.append(DocLint.SEPARATOR);
                    }
                }
                return sb2.toString();
            }
            if (!(value instanceof Rational[])) {
                return null;
            }
            Rational[] rationalArr = (Rational[]) value;
            while (i10 < rationalArr.length) {
                sb2.append(rationalArr[i10].numerator);
                sb2.append('/');
                sb2.append(rationalArr[i10].denominator);
                i10++;
                if (i10 != rationalArr.length) {
                    sb2.append(DocLint.SEPARATOR);
                }
            }
            return sb2.toString();
        }

        /* JADX WARN: Not initialized variable reg: 5, insn: 0x0030: MOVE (r4 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:166:0x0030 */
        /* JADX WARN: Removed duplicated region for block: B:169:0x018f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Object getValue(ByteOrder byteOrder) {
            ByteOrderedDataInputStream byteOrderedDataInputStream;
            AutoCloseable autoCloseable;
            byte b10;
            byte b11;
            int i10 = 0;
            AutoCloseable autoCloseable2 = null;
            try {
                try {
                    byteOrderedDataInputStream = new ByteOrderedDataInputStream(this.bytes);
                    try {
                        byteOrderedDataInputStream.setByteOrder(byteOrder);
                        switch (this.format) {
                            case 1:
                            case 6:
                                byte[] bArr = this.bytes;
                                if (bArr.length != 1 || (b10 = bArr[0]) < 0 || b10 > 1) {
                                    String str = new String(bArr, ExifInterface.ASCII);
                                    try {
                                        byteOrderedDataInputStream.close();
                                    } catch (IOException e10) {
                                        Log.e(ExifInterface.TAG, "IOException occurred while closing InputStream", e10);
                                    }
                                    return str;
                                }
                                String str2 = new String(new char[]{(char) (b10 + 48)});
                                try {
                                    byteOrderedDataInputStream.close();
                                } catch (IOException e11) {
                                    Log.e(ExifInterface.TAG, "IOException occurred while closing InputStream", e11);
                                }
                                return str2;
                            case 2:
                            case 7:
                                if (this.numberOfComponents >= ExifInterface.EXIF_ASCII_PREFIX.length) {
                                    int i11 = 0;
                                    while (true) {
                                        byte[] bArr2 = ExifInterface.EXIF_ASCII_PREFIX;
                                        if (i11 >= bArr2.length) {
                                            i10 = bArr2.length;
                                        } else if (this.bytes[i11] == bArr2[i11]) {
                                            i11++;
                                        }
                                    }
                                }
                                StringBuilder sb2 = new StringBuilder();
                                while (i10 < this.numberOfComponents && (b11 = this.bytes[i10]) != 0) {
                                    if (b11 >= 32) {
                                        sb2.append((char) b11);
                                    } else {
                                        sb2.append('?');
                                    }
                                    i10++;
                                }
                                String sb3 = sb2.toString();
                                try {
                                    byteOrderedDataInputStream.close();
                                } catch (IOException e12) {
                                    Log.e(ExifInterface.TAG, "IOException occurred while closing InputStream", e12);
                                }
                                return sb3;
                            case 3:
                                int[] iArr = new int[this.numberOfComponents];
                                while (i10 < this.numberOfComponents) {
                                    iArr[i10] = byteOrderedDataInputStream.readUnsignedShort();
                                    i10++;
                                }
                                try {
                                    byteOrderedDataInputStream.close();
                                } catch (IOException e13) {
                                    Log.e(ExifInterface.TAG, "IOException occurred while closing InputStream", e13);
                                }
                                return iArr;
                            case 4:
                                long[] jArr = new long[this.numberOfComponents];
                                while (i10 < this.numberOfComponents) {
                                    jArr[i10] = byteOrderedDataInputStream.readUnsignedInt();
                                    i10++;
                                }
                                try {
                                    byteOrderedDataInputStream.close();
                                } catch (IOException e14) {
                                    Log.e(ExifInterface.TAG, "IOException occurred while closing InputStream", e14);
                                }
                                return jArr;
                            case 5:
                                Rational[] rationalArr = new Rational[this.numberOfComponents];
                                while (i10 < this.numberOfComponents) {
                                    rationalArr[i10] = new Rational(byteOrderedDataInputStream.readUnsignedInt(), byteOrderedDataInputStream.readUnsignedInt());
                                    i10++;
                                }
                                try {
                                    byteOrderedDataInputStream.close();
                                } catch (IOException e15) {
                                    Log.e(ExifInterface.TAG, "IOException occurred while closing InputStream", e15);
                                }
                                return rationalArr;
                            case 8:
                                int[] iArr2 = new int[this.numberOfComponents];
                                while (i10 < this.numberOfComponents) {
                                    iArr2[i10] = byteOrderedDataInputStream.readShort();
                                    i10++;
                                }
                                try {
                                    byteOrderedDataInputStream.close();
                                } catch (IOException e16) {
                                    Log.e(ExifInterface.TAG, "IOException occurred while closing InputStream", e16);
                                }
                                return iArr2;
                            case 9:
                                int[] iArr3 = new int[this.numberOfComponents];
                                while (i10 < this.numberOfComponents) {
                                    iArr3[i10] = byteOrderedDataInputStream.readInt();
                                    i10++;
                                }
                                try {
                                    byteOrderedDataInputStream.close();
                                } catch (IOException e17) {
                                    Log.e(ExifInterface.TAG, "IOException occurred while closing InputStream", e17);
                                }
                                return iArr3;
                            case 10:
                                Rational[] rationalArr2 = new Rational[this.numberOfComponents];
                                while (i10 < this.numberOfComponents) {
                                    rationalArr2[i10] = new Rational(byteOrderedDataInputStream.readInt(), byteOrderedDataInputStream.readInt());
                                    i10++;
                                }
                                try {
                                    byteOrderedDataInputStream.close();
                                } catch (IOException e18) {
                                    Log.e(ExifInterface.TAG, "IOException occurred while closing InputStream", e18);
                                }
                                return rationalArr2;
                            case 11:
                                double[] dArr = new double[this.numberOfComponents];
                                while (i10 < this.numberOfComponents) {
                                    dArr[i10] = byteOrderedDataInputStream.readFloat();
                                    i10++;
                                }
                                try {
                                    byteOrderedDataInputStream.close();
                                } catch (IOException e19) {
                                    Log.e(ExifInterface.TAG, "IOException occurred while closing InputStream", e19);
                                }
                                return dArr;
                            case 12:
                                double[] dArr2 = new double[this.numberOfComponents];
                                while (i10 < this.numberOfComponents) {
                                    dArr2[i10] = byteOrderedDataInputStream.readDouble();
                                    i10++;
                                }
                                try {
                                    byteOrderedDataInputStream.close();
                                } catch (IOException e20) {
                                    Log.e(ExifInterface.TAG, "IOException occurred while closing InputStream", e20);
                                }
                                return dArr2;
                            default:
                                try {
                                    byteOrderedDataInputStream.close();
                                } catch (IOException e21) {
                                    Log.e(ExifInterface.TAG, "IOException occurred while closing InputStream", e21);
                                }
                                return null;
                        }
                    } catch (IOException e22) {
                        e = e22;
                        Log.w(ExifInterface.TAG, "IOException occurred during reading a value", e);
                        if (byteOrderedDataInputStream != null) {
                            try {
                                byteOrderedDataInputStream.close();
                            } catch (IOException e23) {
                                Log.e(ExifInterface.TAG, "IOException occurred while closing InputStream", e23);
                            }
                        }
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    autoCloseable2 = autoCloseable;
                    if (autoCloseable2 != null) {
                        try {
                            autoCloseable2.close();
                        } catch (IOException e24) {
                            Log.e(ExifInterface.TAG, "IOException occurred while closing InputStream", e24);
                        }
                    }
                    throw th;
                }
            } catch (IOException e25) {
                e = e25;
                byteOrderedDataInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                if (autoCloseable2 != null) {
                }
                throw th;
            }
        }

        public int size() {
            return ExifInterface.IFD_FORMAT_BYTES_PER_FORMAT[this.format] * this.numberOfComponents;
        }

        public String toString() {
            return "(" + ExifInterface.IFD_FORMAT_NAMES[this.format] + ", data length:" + this.bytes.length + ")";
        }

        public static ExifAttribute createDouble(double d10, ByteOrder byteOrder) {
            return createDouble(new double[]{d10}, byteOrder);
        }

        public static ExifAttribute createSLong(int i10, ByteOrder byteOrder) {
            return createSLong(new int[]{i10}, byteOrder);
        }

        public static ExifAttribute createULong(long j10, ByteOrder byteOrder) {
            return createULong(new long[]{j10}, byteOrder);
        }

        public static ExifAttribute createUShort(int i10, ByteOrder byteOrder) {
            return createUShort(new int[]{i10}, byteOrder);
        }

        public static ExifAttribute createSRational(Rational rational, ByteOrder byteOrder) {
            return createSRational(new Rational[]{rational}, byteOrder);
        }

        public static ExifAttribute createURational(Rational rational, ByteOrder byteOrder) {
            return createURational(new Rational[]{rational}, byteOrder);
        }
    }

    public static class ExifTag {
        public final String name;
        public final int number;
        public final int primaryFormat;
        public final int secondaryFormat;

        public ExifTag(String str, int i10, int i11) {
            this.name = str;
            this.number = i10;
            this.primaryFormat = i11;
            this.secondaryFormat = -1;
        }

        public boolean isFormatCompatible(int i10) {
            int i11;
            int i12 = this.primaryFormat;
            if (i12 == 7 || i10 == 7 || i12 == i10 || (i11 = this.secondaryFormat) == i10) {
                return true;
            }
            if ((i12 == 4 || i11 == 4) && i10 == 3) {
                return true;
            }
            if ((i12 == 9 || i11 == 9) && i10 == 8) {
                return true;
            }
            return (i12 == 12 || i11 == 12) && i10 == 11;
        }

        public ExifTag(String str, int i10, int i11, int i12) {
            this.name = str;
            this.number = i10;
            this.primaryFormat = i11;
            this.secondaryFormat = i12;
        }
    }

    public ExifInterface(InputStream inputStream) throws IOException {
        ExifTag[][] exifTagArr = EXIF_TAGS;
        this.mAttributes = new HashMap[exifTagArr.length];
        this.mAttributesOffsets = new HashSet(exifTagArr.length);
        this.mExifByteOrder = ByteOrder.BIG_ENDIAN;
        if (inputStream != null) {
            this.mFilename = null;
            if (inputStream instanceof AssetManager.AssetInputStream) {
                this.mAssetInputStream = (AssetManager.AssetInputStream) inputStream;
            } else {
                this.mAssetInputStream = null;
            }
            loadAttributes(inputStream);
            return;
        }
        throw new IllegalArgumentException("inputStream cannot be null");
    }
}
