.class public abstract LAd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:F = 1.0f


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:F


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LAd/b;->a:Ljava/lang/CharSequence;

    iput p2, p0, LAd/b;->b:F

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, LAd/b;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, LAd/b;->b:F

    return v0
.end method
