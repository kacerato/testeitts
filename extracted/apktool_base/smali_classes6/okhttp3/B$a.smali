.class public Lokhttp3/B$a;
.super LTg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/B;-><init>(Lokhttp3/z;Lokhttp3/C;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic l:Lokhttp3/B;


# direct methods
.method public constructor <init>(Lokhttp3/B;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/B$a;->l:Lokhttp3/B;

    invoke-direct {p0}, LTg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public v()V
    .locals 1

    iget-object v0, p0, Lokhttp3/B$a;->l:Lokhttp3/B;

    invoke-virtual {v0}, Lokhttp3/B;->cancel()V

    return-void
.end method
