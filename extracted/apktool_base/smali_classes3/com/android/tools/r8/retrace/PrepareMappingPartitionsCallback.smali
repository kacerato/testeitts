.class public interface abstract Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final EMPTY_INSTANCE:Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/retrace/v;

    invoke-direct {v0}, Lcom/android/tools/r8/retrace/v;-><init>()V

    sput-object v0, Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;->EMPTY_INSTANCE:Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;->b()V

    return-void
.end method

.method private static synthetic b()V
    .locals 0

    return-void
.end method

.method public static empty()Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;->EMPTY_INSTANCE:Lcom/android/tools/r8/retrace/PrepareMappingPartitionsCallback;

    return-object v0
.end method


# virtual methods
.method public abstract prepare()V
.end method
