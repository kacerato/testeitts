.class public interface abstract Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final EMPTY_INSTANCE:Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/retrace/y;

    invoke-direct {v0}, Lcom/android/tools/r8/retrace/y;-><init>()V

    sput-object v0, Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;->EMPTY_INSTANCE:Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static empty()Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;->EMPTY_INSTANCE:Lcom/android/tools/r8/retrace/RegisterMappingPartitionCallback;

    return-object v0
.end method


# virtual methods
.method public abstract register(Ljava/lang/String;)V
.end method
