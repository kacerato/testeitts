.class public Lge/q$h$a;
.super Lae/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lge/q$h;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lge/q$h;


# direct methods
.method public constructor <init>(Lge/q$h;LWd/b0;)V
    .locals 0

    iput-object p1, p0, Lge/q$h$a;->g:Lge/q$h;

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

    iget-object v0, p0, Lge/q$h$a;->g:Lge/q$h;

    iget-object v0, v0, Lge/q$h;->c:Lge/q;

    iget-object v0, v0, Lge/q;->s:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
