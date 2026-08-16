.class public Lnl/h;
.super LXi/c;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "SHA-512/256"

.field public static final e:Ljava/lang/String; = "SHA3-256"


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LXi/c;-><init>(Z)V

    iput-object p2, p0, Lnl/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnl/h;->c:Ljava/lang/String;

    return-object v0
.end method
