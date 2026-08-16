.class public LVj/a$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZi/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LVj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# instance fields
.field public final a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LVj/a$m$a;

    invoke-direct {v0, p0, p1}, LVj/a$m$a;-><init>(LVj/a$m;Ljava/net/URL;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    iput-object p1, p0, LVj/a$m;->a:Ljava/io/InputStream;

    return-void
.end method

.method public static synthetic a(LVj/a$m;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, LVj/a$m;->a:Ljava/io/InputStream;

    return-object p0
.end method

.method public static synthetic b(LVj/a$m;[BII)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LVj/a$m;->c([BII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final c([BII)I
    .locals 1

    new-instance v0, LVj/a$m$b;

    invoke-direct {v0, p0, p1, p2, p3}, LVj/a$m$b;-><init>(LVj/a$m;[BII)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public get(I)LZi/d;
    .locals 1

    new-instance v0, LVj/a$m$c;

    invoke-direct {v0, p0, p1}, LVj/a$m$c;-><init>(LVj/a$m;I)V

    return-object v0
.end method
