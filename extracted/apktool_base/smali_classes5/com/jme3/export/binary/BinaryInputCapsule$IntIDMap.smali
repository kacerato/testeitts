.class Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/export/binary/BinaryInputCapsule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntIDMap"
.end annotation


# instance fields
.field public keys:[I

.field public values:[Lcom/jme3/export/binary/BinaryInputCapsule$ID;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jme3/export/binary/BinaryInputCapsule$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jme3/export/binary/BinaryInputCapsule$IntIDMap;-><init>()V

    return-void
.end method
