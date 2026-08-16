.class public final synthetic Lwn/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final synthetic d:[[F

.field public final synthetic e:[[F


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;[[F[[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwn/w;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput-object p2, p0, Lwn/w;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p3, p0, Lwn/w;->d:[[F

    iput-object p4, p0, Lwn/w;->e:[[F

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lwn/w;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iget-object v1, p0, Lwn/w;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v2, p0, Lwn/w;->d:[[F

    iget-object v3, p0, Lwn/w;->e:[[F

    check-cast p1, [F

    invoke-static {v0, v1, v2, v3, p1}, Lwn/B;->b(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;[[F[[F[F)[F

    move-result-object p1

    return-object p1
.end method
