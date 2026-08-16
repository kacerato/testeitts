.class Lcom/ardor3d/util/export/binary/BinaryInputCapsule$StringIDMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ardor3d/util/export/binary/BinaryInputCapsule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringIDMap"
.end annotation


# instance fields
.field public keys:[Ljava/lang/String;

.field public values:[Lcom/ardor3d/util/export/binary/BinaryInputCapsule$ID;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ardor3d/util/export/binary/BinaryInputCapsule$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ardor3d/util/export/binary/BinaryInputCapsule$StringIDMap;-><init>()V

    return-void
.end method
