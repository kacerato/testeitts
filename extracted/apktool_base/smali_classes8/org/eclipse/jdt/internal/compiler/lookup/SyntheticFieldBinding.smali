.class public Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
.source "SourceFile"


# instance fields
.field public index:I


# direct methods
.method public constructor <init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    iput p6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;->index:I

    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide p3, 0x600000000L

    or-long/2addr p1, p3

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    return-void
.end method
