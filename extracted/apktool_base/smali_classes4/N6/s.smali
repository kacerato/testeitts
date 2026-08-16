.class public final synthetic LN6/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;


# instance fields
.field public final synthetic a:LN6/v;

.field public final synthetic b:Ljava/nio/ByteBuffer;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:LN6/p;


# direct methods
.method public synthetic constructor <init>(LN6/v;Ljava/nio/ByteBuffer;Ljava/lang/String;LN6/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN6/s;->a:LN6/v;

    iput-object p2, p0, LN6/s;->b:Ljava/nio/ByteBuffer;

    iput-object p3, p0, LN6/s;->c:Ljava/lang/String;

    iput-object p4, p0, LN6/s;->d:LN6/p;

    return-void
.end method


# virtual methods
.method public final on(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, LN6/s;->a:LN6/v;

    iget-object v1, p0, LN6/s;->b:Ljava/nio/ByteBuffer;

    iget-object v2, p0, LN6/s;->c:Ljava/lang/String;

    iget-object v3, p0, LN6/s;->d:LN6/p;

    invoke-static {v0, v1, v2, v3, p1}, LN6/v;->c(LN6/v;Ljava/nio/ByteBuffer;Ljava/lang/String;LN6/p;Landroid/graphics/Bitmap;)V

    return-void
.end method
