.class public final Loh/L;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Loh/L;->a:I

    iput p2, p0, Loh/L;->b:I

    return-void
.end method

.method public static a(II)Loh/L;
    .locals 1

    new-instance v0, Loh/L;

    invoke-direct {v0, p0, p1}, Loh/L;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Loh/L;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Loh/L;->b:I

    return v0
.end method
