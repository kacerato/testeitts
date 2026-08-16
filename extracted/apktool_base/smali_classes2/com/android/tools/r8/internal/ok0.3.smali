.class public abstract Lcom/android/tools/r8/internal/ok0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetracedFieldReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isKnown()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/mk0;

    return v0
.end method

.method public isUnknown()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/mk0;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
