.class Lorg/luaj/vm2/compiler/LexState$ConsControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/luaj/vm2/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConsControl"
.end annotation


# instance fields
.field na:I

.field nh:I

.field t:Lorg/luaj/vm2/compiler/LexState$expdesc;

.field tostore:I

.field v:Lorg/luaj/vm2/compiler/LexState$expdesc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/luaj/vm2/compiler/LexState$expdesc;

    invoke-direct {v0}, Lorg/luaj/vm2/compiler/LexState$expdesc;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/compiler/LexState$ConsControl;->v:Lorg/luaj/vm2/compiler/LexState$expdesc;

    return-void
.end method
