.class public abstract Loh/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loh/o;->a:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/io/OutputStream;
.end method
