#include <SDL2/SDL.h>
#include <SDL2/SDL_mixer.h>
#include <SDL2/SDL_image.h>

void print_version(const char* name,const SDL_version *v)
{
  printf("%s : %u.%u.%u\n", name, v->major, v->minor, v->patch);
}

int main(){
  printf("wow\n");
  SDL_Init(SDL_INIT_VIDEO);
  SDL_version v;
  SDL_VERSION(&v);
  print_version("SDL(compile)",&v);
  SDL_GetVersion(&v);
  print_version("SDL(link)",&v);

  SDL_IMAGE_VERSION(&v)
  print_version("Image(compile)", &v);
  print_version("Image(link)", IMG_Linked_Version() );
  SDL_MIXER_VERSION(&v)
  print_version("Mixer(compile)", &v);
  print_version("Mixer(link)", Mix_Linked_Version() );

  int flag = MIX_INIT_FLAC|MIX_INIT_MOD|MIX_INIT_MP3|MIX_INIT_OGG|MIX_INIT_MID|MIX_INIT_OPUS;
  int i = Mix_Init(flag);
  if(i&MIX_INIT_FLAC) printf("MIX_INIT_FLAC\n");
  if(i&MIX_INIT_MOD) printf("MIX_INIT_MOD\n");
  if(i&MIX_INIT_MP3) printf("MIX_INIT_MP3\n");
  if(i&MIX_INIT_OGG) printf("MIX_INIT_OGG\n");
  if(i&MIX_INIT_MID) printf("MIX_INIT_MID\n");
  if(i&MIX_INIT_OPUS) printf("MIX_INIT_OPUS\n");

  flag = IMG_INIT_JPG|IMG_INIT_PNG|IMG_INIT_TIF|IMG_INIT_WEBP|IMG_INIT_JXL|IMG_INIT_AVIF;
  i=IMG_Init(flag);
  if(i&IMG_INIT_JPG) printf("IMG_INIT_JPG\n");
  if(i&IMG_INIT_PNG) printf("IMG_INIT_PNG\n");
  if(i&IMG_INIT_TIF) printf("IMG_INIT_TIF\n");
  if(i&IMG_INIT_WEBP) printf("IMG_INIT_WEBP\n");
  if(i&IMG_INIT_JXL) printf("IMG_INIT_JXL\n");
  if(i&IMG_INIT_AVIF) printf("IMG_INIT_AVIF\n");
}
