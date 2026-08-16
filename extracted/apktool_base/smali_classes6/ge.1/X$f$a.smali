.class public Lge/X$f$a;
.super Lge/X$f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lge/X$f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lge/X$f;


# direct methods
.method public constructor <init>(Lge/X$f;Lge/X;)V
    .locals 0

    iput-object p1, p0, Lge/X$f$a;->g:Lge/X$f;

    invoke-direct {p0, p1, p2}, Lge/X$f$b;-><init>(Lge/X$f;Lge/X;)V

    return-void
.end method


# virtual methods
.method public k(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lge/X$f$a;->g:Lge/X$f;

    iget-object v0, v0, Lge/X$f;->c:Lge/X;

    iget-object v0, v0, Lge/X;->v:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
