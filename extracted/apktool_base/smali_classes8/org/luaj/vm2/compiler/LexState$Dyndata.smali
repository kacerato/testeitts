.class Lorg/luaj/vm2/compiler/LexState$Dyndata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/luaj/vm2/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dyndata"
.end annotation


# instance fields
.field actvar:[Lorg/luaj/vm2/compiler/LexState$Vardesc;

.field gt:[Lorg/luaj/vm2/compiler/LexState$Labeldesc;

.field label:[Lorg/luaj/vm2/compiler/LexState$Labeldesc;

.field n_actvar:I

.field n_gt:I

.field n_label:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/luaj/vm2/compiler/LexState$Dyndata;->n_actvar:I

    iput v0, p0, Lorg/luaj/vm2/compiler/LexState$Dyndata;->n_gt:I

    iput v0, p0, Lorg/luaj/vm2/compiler/LexState$Dyndata;->n_label:I

    return-void
.end method
