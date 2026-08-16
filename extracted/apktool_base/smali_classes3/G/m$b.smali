.class public final LG/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LG/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/security/MessageDigest;

.field public final c:LZ/c;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LZ/c;->a()LZ/c;

    move-result-object v0

    iput-object v0, p0, LG/m$b;->c:LZ/c;

    iput-object p1, p0, LG/m$b;->b:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public d()LZ/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LG/m$b;->c:LZ/c;

    return-object v0
.end method
