.class synthetic Lcom/jme3/app/BasicProfiler$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/app/BasicProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$jme3$profile$AppStep:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/jme3/profile/AppStep;->values()[Lcom/jme3/profile/AppStep;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/app/BasicProfiler$1;->$SwitchMap$com$jme3$profile$AppStep:[I

    :try_start_0
    sget-object v1, Lcom/jme3/profile/AppStep;->BeginFrame:Lcom/jme3/profile/AppStep;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/jme3/app/BasicProfiler$1;->$SwitchMap$com$jme3$profile$AppStep:[I

    sget-object v1, Lcom/jme3/profile/AppStep;->RenderFrame:Lcom/jme3/profile/AppStep;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/jme3/app/BasicProfiler$1;->$SwitchMap$com$jme3$profile$AppStep:[I

    sget-object v1, Lcom/jme3/profile/AppStep;->EndFrame:Lcom/jme3/profile/AppStep;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
