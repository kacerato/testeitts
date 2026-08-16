.class public Lck/v;
.super Ljavax/crypto/spec/PBEKeySpec;
.source "SourceFile"


# static fields
.field public static final c:Lhi/b;


# instance fields
.field public b:Lhi/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->w1:Loh/x;

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, Lck/v;->c:Lhi/b;

    return-void
.end method

.method public constructor <init>([C[BIILhi/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    iput-object p5, p0, Lck/v;->b:Lhi/b;

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, Lck/v;->b:Lhi/b;

    return-object v0
.end method

.method public b()Z
    .locals 2

    sget-object v0, Lck/v;->c:Lhi/b;

    iget-object v1, p0, Lck/v;->b:Lhi/b;

    invoke-virtual {v0, v1}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
