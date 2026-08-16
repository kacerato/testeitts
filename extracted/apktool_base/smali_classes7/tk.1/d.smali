.class public Ltk/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltk/g;
.implements Ltk/h;


# static fields
.field public static final a:Ltk/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltk/d;

    invoke-direct {v0}, Ltk/d;-><init>()V

    sput-object v0, Ltk/d;->a:Ltk/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ltk/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p0
.end method

.method public b(Ltk/e;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p2
.end method
