.class public final Lcom/android/tools/r8/internal/Cw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/inspector/BooleanValueInspector;
.implements Lcom/android/tools/r8/inspector/ByteValueInspector;
.implements Lcom/android/tools/r8/inspector/CharValueInspector;
.implements Lcom/android/tools/r8/inspector/ShortValueInspector;
.implements Lcom/android/tools/r8/inspector/IntValueInspector;
.implements Lcom/android/tools/r8/inspector/LongValueInspector;
.implements Lcom/android/tools/r8/inspector/FloatValueInspector;
.implements Lcom/android/tools/r8/inspector/DoubleValueInspector;
.implements Lcom/android/tools/r8/inspector/StringValueInspector;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/R2;

.field public final b:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cw0;->a:Lcom/android/tools/r8/graph/R2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    return-void
.end method

.method public static a(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid call on ValueInspector"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final asBooleanValue()Lcom/android/tools/r8/inspector/BooleanValueInspector;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->F0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final asByteValue()Lcom/android/tools/r8/inspector/ByteValueInspector;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final asCharValue()Lcom/android/tools/r8/inspector/CharValueInspector;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->H0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final asDoubleValue()Lcom/android/tools/r8/inspector/DoubleValueInspector;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final asFloatValue()Lcom/android/tools/r8/inspector/FloatValueInspector;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->K0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final asIntValue()Lcom/android/tools/r8/inspector/IntValueInspector;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final asLongValue()Lcom/android/tools/r8/inspector/LongValueInspector;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->M0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final asShortValue()Lcom/android/tools/r8/inspector/ShortValueInspector;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->R0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final asStringValue()Lcom/android/tools/r8/inspector/StringValueInspector;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Cw0;->isStringValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBooleanValue()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->F0()Z

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Cw0;->a(Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->a:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->o0()Lcom/android/tools/r8/graph/R2$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2$c;->W0()Z

    move-result v0

    return v0
.end method

.method public final getByteValue()B
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->G0()Z

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Cw0;->a(Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->a:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->p0()Lcom/android/tools/r8/graph/R2$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2$d;->W0()B

    move-result v0

    return v0
.end method

.method public final getCharValue()C
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->H0()Z

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Cw0;->a(Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->a:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->q0()Lcom/android/tools/r8/graph/R2$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2$e;->W0()C

    move-result v0

    return v0
.end method

.method public final getDoubleValue()D
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->J0()Z

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Cw0;->a(Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->a:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->s0()Lcom/android/tools/r8/graph/R2$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2$f;->W0()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getFloatValue()F
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->K0()Z

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Cw0;->a(Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->a:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->v0()Lcom/android/tools/r8/graph/R2$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2$g;->W0()F

    move-result v0

    return v0
.end method

.method public final getIntValue()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Cw0;->a(Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->a:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->w0()Lcom/android/tools/r8/graph/R2$h;

    move-result-object v0

    iget v0, v0, Lcom/android/tools/r8/graph/R2$h;->d:I

    return v0
.end method

.method public final getLongValue()J
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->M0()Z

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Cw0;->a(Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->a:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->x0()Lcom/android/tools/r8/graph/R2$i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2$i;->W0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getShortValue()S
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->R0()Z

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Cw0;->a(Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->a:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->C0()Lcom/android/tools/r8/graph/R2$j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2$j;->W0()S

    move-result v0

    return v0
.end method

.method public final getStringValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Cw0;->isStringValue()Z

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Cw0;->a(Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->a:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->D0()Lcom/android/tools/r8/graph/R2$k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2$k;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeReference()Lcom/android/tools/r8/references/TypeReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object v0

    return-object v0
.end method

.method public final isBooleanValue()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->F0()Z

    move-result v0

    return v0
.end method

.method public final isByteValue()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->G0()Z

    move-result v0

    return v0
.end method

.method public final isCharValue()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->H0()Z

    move-result v0

    return v0
.end method

.method public final isDoubleValue()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->J0()Z

    move-result v0

    return v0
.end method

.method public final isFloatValue()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->K0()Z

    move-result v0

    return v0
.end method

.method public final isIntValue()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result v0

    return v0
.end method

.method public final isLongValue()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->M0()Z

    move-result v0

    return v0
.end method

.method public final isPrimitive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    return v0
.end method

.method public final isShortValue()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->R0()Z

    move-result v0

    return v0
.end method

.method public final isStringValue()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cw0;->a:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->R0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
