.class public Lge/H$h$a;
.super Lae/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lge/H$h;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lge/H$h;


# direct methods
.method public constructor <init>(Lge/H$h;LWd/b0;)V
    .locals 0

    iput-object p1, p0, Lge/H$h$a;->g:Lge/H$h;

    invoke-direct {p0, p2}, Lae/a;-><init>(LWd/b0;)V

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

    iget-object v0, p0, Lge/H$h$a;->g:Lge/H$h;

    iget-object v0, v0, Lge/H$h;->c:Lge/H;

    iget-object v0, v0, Lge/H;->q:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
