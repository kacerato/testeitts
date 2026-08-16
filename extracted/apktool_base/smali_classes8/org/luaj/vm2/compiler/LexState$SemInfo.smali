.class Lorg/luaj/vm2/compiler/LexState$SemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/luaj/vm2/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemInfo"
.end annotation


# instance fields
.field r:Lorg/luaj/vm2/LuaValue;

.field ts:Lorg/luaj/vm2/LuaString;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/luaj/vm2/compiler/LexState$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/luaj/vm2/compiler/LexState$SemInfo;-><init>()V

    return-void
.end method
