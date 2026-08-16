.class public Lge/x$f$a;
.super Lge/x$f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lge/x$f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lge/x$f;


# direct methods
.method public constructor <init>(Lge/x$f;Lge/x;)V
    .locals 0

    iput-object p1, p0, Lge/x$f$a;->g:Lge/x$f;

    invoke-direct {p0, p1, p2}, Lge/x$f$b;-><init>(Lge/x$f;Lge/x;)V

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

    iget-object v0, p0, Lge/x$f$a;->g:Lge/x$f;

    iget-object v0, v0, Lge/x$f;->c:Lge/x;

    iget-object v0, v0, Lge/x;->v:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
