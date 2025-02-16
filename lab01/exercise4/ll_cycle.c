// "Copyright 2023 <Malik Faayez Muhammad>" [legal/copyright]
#include <stddef.h>
#include <ll_cycle.h>

int ll_has_cycle(node *head) {
  /* TODO: Implement ll_has_cycle */
  node *fast_ptr = head;
  node *slow_ptr = head;
  while (fast_ptr != NULL) {
  if (fast_ptr->next == NULL) {
    fast_ptr = fast_ptr->next;
  } else {
    fast_ptr = fast_ptr->next;
    fast_ptr = fast_ptr->next;
  }
  slow_ptr = slow_ptr->next;
  if (fast_ptr == slow_ptr)
    return 1;
  }
  return 0;
}
