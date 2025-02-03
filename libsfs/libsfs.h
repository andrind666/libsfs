#ifndef LIBSFS_H
#define LIBSFS_H

#ifdef __cplusplus
extern "C" {
#endif

void initialize_cef();
void load_url(const char* url);
void enable_extensions();
void enable_devtools();
void create_tab();
void close_tab(int tab_id);
void switch_tab(int tab_id);
void start_download(const char* url);

#ifdef __cplusplus
}
#endif

#endif // LIBSFS_H
